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
                            <?php echo $this->HTML->image('resource/9.jpg');?>
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
                                    <h4 class="title"><?php echo $spot['Spot']['name'];?></h4>
                                    <p>
                                        <?php echo implode(' ', array_slice(explode(' ', $spot['Spot']['excerpt']), 0, 100));?>         
                                    </p>  
                                </div>
                            </div>     
                        </a>                   
                                
                    </div>
                </article>
            <?php endforeach;?>
            
           
           
            
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