<?php
    $this->Html->addCrumb("Spots", [
        'plugin' => 'ecospots',
        'controller' => 'spots', 
        'action' => 'index'
    ]);

    $this->Html->addCrumb($spot['Spot']['name'], [
        'plugin' => 'ecospots',
        'controller' => 'spots', 
        'action' => 'view/'.$spot['Spot']['slug']
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

<section class="default-section sec-padd">
    <div class="container"> 
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-12">
                <div class="default-sidebar">
                    <ul class="service-catergory nav nav-tabs">
                        <li><a data-toggle="tab" href="#spot">Spot Description</a></li>
                        <li><a data-toggle="tab" href="#activities">Activities</a></li>
                        <li><a data-toggle="tab" href="#animals">Animal Life</a></li>
                        <li><a data-toggle="tab" href="#plants">Plant Life</a></li>
                    </ul>
                  
                </div>
            </div>
            <div class="tab-content col-lg-9 col-md-8 col-sm-12">
                <div id="spot" class="tab-pane fade in active">
                  <section class="blog-single-post blog-section">
                
                            <div class="post-area spots-description">
                                <article class="default-blog-news">
                                    <?php if($spot['Spot']['reserve'] == 1) : ?>
                                        <div class="natural-reserve-msg">
                                            <p>Natural Reserve <i class="fa fa-tree"></i></p>
                                        </div>
                                    <?php endif;?>
                                    <figure class="img-holder">
                                        <?php
                                            $image = !empty($spot['Spot']['photo']) ? '../uploads/'.$spot['Spot']['photo'] : 'blog/11.jpg';
                                            echo $this->HTML->image($image);
                                        ?>
                                    </figure>
                                    <div class="lower-content">                                                        
                                        <h4><?php echo $spot['Spot']['name'];?></h4>
                                    </div>
                                </article>
                                <div class="content-box">
                                    <div class="text">
                                        <?php echo $spot['Spot']['description'];?>
                                    </div>

                                </div>

                            </div>
                    </section>
                </div>


                <div id="activities" class="tab-pane fade">
                    <div class="col-lg-9 col-md-8 col-sm-12">
                        <div class="service">
                            <div class="row">
                                <?php foreach($spot['Activity'] as $activity) : ?>
                                <div class="col-md-4 col-sm-6 col-x-12">
                                    <div class="service-item center">
                                        <div class="icon-box">
                                            <i class="fa fa-bicycle"></i>
                                        </div>
                                        <h4><?=$activity['name']?></h4>
                                    </div>
                                </div>
                                <?php endforeach;?>
                            </div>
                        </div>
                    </div>
                </div>


                <div id="animals" class="tab-pane fade">
                  <div class="col-lg-9 col-md-8 col-sm-12">
                        <div class="service">
                            <div class="row">
                                <?php foreach($spot['Animal'] as $animal) : ?>
                                <div class="col-md-4 col-sm-6 col-x-12">
                                    <div class="service-item center">
                                        <div class="icon-box">
                                            <i class="fa fa-paw"></i>
                                        </div>
                                        <h4><?=$animal['name']?></h4>
                                    </div>
                                </div>
                                <?php endforeach;?>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="plants" class="tab-pane fade">
                  <div class="col-lg-9 col-md-8 col-sm-12">
                        <div class="service">
                            <div class="row">
                                <?php foreach($spot['Plant'] as $plant) : ?>
                                <div class="col-md-4 col-sm-6 col-x-12">
                                    <div class="service-item center">
                                        <div class="icon-box">
                                            <i class="fa fa-leaf"></i>
                                        </div>
                                        <h4><?=$plant['name']?></h4>
                                    </div>
                                </div>
                                <?php endforeach;?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php if(!(empty($spot['Map']['latitude']) || empty($spot['Map']['longitude']))) : ?>
            <div class="row">
                <div id="spotMap" class="full-width"></div>
            </div>
            <script type="text/javascript">
                var API_KEY = "<?=Configure::read("Site.Google_Map_API_Key")?>";
                var options = 
                {
                    zoom: <?=$spot['Map']['zoom']?>,
                    minZoom: 3
                };
                var latitude = <?=$spot['Map']['latitude']?>;
                var longitude = <?=$spot['Map']['longitude']?>;
            </script>
        <?php endif;?>
    </div>
</section>