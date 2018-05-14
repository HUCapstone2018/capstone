<?php
    $this->Html->addCrumb("Spots", [
        'plugin' => 'ecospots',
        'controller' => 'spots', 
        'action' => 'index'
    ]);


    $breadCrumbs = $this->Html->getCrumbs(' #$% ', [
        'url' => [
            'plugin' => 'nodes',
            'controller' => 'nodes', 
            'action' => 'promoted'
        ]
    ]);

    $crumbs = explode('#$%', $breadCrumbs);

    $checked = false;
    if(isset($this->request->params['named']['natural-reserve']) && $this->request->params['named']['natural-reserve'] == 'yes')
        $checked = true;

    $animal = (isset($this->request->params['named']['animal']) && !empty($this->request->params['named']['animal'])) ? $this->request->params['named']['animal'] : '';
    $plant = (isset($this->request->params['named']['plant']) && !empty($this->request->params['named']['plant'])) ? $this->request->params['named']['plant'] : '';

    $show_map = (empty($animal) && empty($plant)) ? false : true;
?>
<!-- <h3>Test</h3> -->
<div class="blog-index">
<div class="breadcumb-wrapper">
    <div class="container">
        <div class="pull-left">
            <ul class="list-inline link-list">
                <?php foreach($crumbs as $crumb):?>
                <li>
                    <?php echo $crumb;?>
                </li>
                <?php endforeach?>
            </ul>
        </div>

    </div>
</div>
<?php if($show_map) : ?>
    <div class="row">
         <div id="distributionMap" class="full-width"></div>
         <script type="text/javascript">
            var API_KEY = "<?=Configure::read("Site.Google_Map_API_Key")?>";
            var options = 
            {
                zoom: 9,
                minZoom: 3
            };
            var markers = [];
        </script>
    </div>
<?php endif;?>
<section class="urgent-cause2 sec-padd">
    <div class="container">
        <div class="row ecospots-searchbox">
            <div class="col-md-12">
                <div class="form-grp-inline col-md-4 col-sm-12">
                    <label>is a Natural Reserve</label>
                    <input id="spotReserveBox" type="checkbox" <?php if($checked===true){echo 'checked="true"';}?>">
                </div>

                <div class="form-grp-inline col-md-4 col-sm-12">
                    <input id="spotNameBox" type="text" class="ecospots-textbox" placeholder="Search by Name">
                    <button id="spotNameButton" class="btn ecospots-button">Search</button>
                </div>

                <div class="form-grp-inline col-md-4 col-sm-12 txt-right">
                    <button id="searchModalButton" type="button" class="btn" data-toggle="modal" data-target="#searchModal">Search by Activities</button>
                </div>
            </div>
        </div>

        <div class="row">
            <?php foreach($spots as $spot):?>
                <article class="col-md-4 col-sm-6 col-xs-12">
                    <div class="item clearfix with-mb">
                        <figure class="img-box">
                            <?php 
                                $image = !empty($spot['Spot']['photo']) ? 'uploads/'.$spot['Spot']['photo'] : 'uploads/no-image.jpg';
                                echo $this->Image->crop($image,400,300);
                            ?>
                            <div class="overlay">
                                <div class="inner-box">
                                    <div class="content-box">
                                        <a class="thm-btn style-2 donate-box-btn" href="<?=$this->HTML->url('/spot/'.$spot['Spot']['slug'])?>">
                                            Explore Spot
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </figure>
                        
                        <a href="<?=$this->HTML->url('/spot/'.$spot['Spot']['slug'])?>" class="full-width">
                            <div class="content">           
                                <div class="text center">
                                    <h4 class="title caps-title"><?php echo $spot['Spot']['name'];?></h4>
                                    <p>
                                        <?php echo $this->Eco->excerpt($spot['Spot']['excerpt']);?>         
                                    </p>  
                                </div>
                            </div>     
                        </a>                   
                                
                    </div>
                </article>

                <?php if($show_map && !(empty($spot['Map']['latitude']) || empty($spot['Map']['longitude'])) ) : ?>
                    <script type="text/javascript">
                        markers.push({
                            latitude: <?=$spot['Map']['latitude']?>,
                            longitude: <?=$spot['Map']['longitude']?>,
                            spot: "<?=$spot['Spot']['name']?>"
                        });
                    </script>
                <?php endif;?>
            <?php endforeach;?>
            
           <?php if(empty($spots)):?>
                <h4 class="not-found">No Spots were found</h4>
           <?php endif;?>
           
            
        </div>
        <div class="row">
            <div class="col-md-12">
                <ul class="page_pagination center">
                    <?php echo $this->Paginator->prev("<",['class'=>'tran3s']); ?>
                    <?php echo $this->Paginator->numbers(['class'=>'tran3s']); ?>
                    <?php echo $this->Paginator->next(">",['class'=>'tran3s']); ?>
                </ul>
            </div>
        </div> 
    </div>
</section>
<?php echo $this->element('search-modal',['search'=>'activity']);?>