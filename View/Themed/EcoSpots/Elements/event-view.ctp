<?php
    $this->Html->addCrumb("Events", [
        'plugin' => 'ecospots',
        'controller' => 'events', 
        'action' => 'index'
    ]);

    $this->Html->addCrumb($event['Event']['name'], [
        'plugin' => 'ecospots',
        'controller' => 'events', 
        'action' => 'view/'.$event['Event']['slug']
    ]);

    $breadCrumbs = $this->Html->getCrumbs(' #$% ', [
        'url' => [
            'plugin' => 'nodes',
            'controller' => 'nodes', 
            'action' => 'promoted'
        ]
    ]);

    $crumbs = explode('#$%', $breadCrumbs);
?>
<div class="blog-view">
<div class="inner-banner has-base-color-overlay text-center" style="background: url(images/background/4.jpg);">
    <div class="container">
        <div class="box">
            <h1><?php echo $event['Event']['name'];?></h1>
        </div>
    </div>
</div>


<section class="blog-single-post blog-section">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-2 col-sm-12">

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
                <div class="post-area">
                    <article class="default-blog-news">
                        <figure class="img-holder">
                            <?php
                                $image = !empty($event['Event']['photo']) ? '../uploads/'.$event['Event']['photo'] : 'blog/11.jpg';
                                echo $this->HTML->image($image);
                            ?>
                        </figure>
                        <div class="lower-content">
                            <div class="date"><?php echo date("F jS, Y", strtotime($event['Event']['date']));?></div>
                                                        
                            <h4><?php echo $event['Event']['name'];?></h4>
                        </div>
                    </article>
                    <div class="content-box">
                        <div class="text">
                            <?php echo $event['Event']['description'];?>
                        </div>
                        
                        <div class="outer-box">
                            <div class="post-author">
                                <div class="inner-box">
                                    <figure class="author-thumb">
                                        <?php echo $this->HTML->image('blog/author2.jpg');?>
                                    </figure>
                                    <h4><?php echo $event['User']['name'];?></h4>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                    
            </div>            
        </div>
    </div>
</section>

</div>