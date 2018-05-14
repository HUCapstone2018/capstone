<?php
    $this->Html->addCrumb("Blogs", [
        'plugin' => 'ecospots',
        'controller' => 'blogs', 
        'action' => 'index'
    ]);

    $this->Html->addCrumb($blog['Blog']['name'], [
        'plugin' => 'ecospots',
        'controller' => 'blog', 
        'action' => 'view/'.$blog['Blog']['slug']
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
<div class="inner-banner has-base-color-overlay text-center">
    <div class="container">
        <div class="box">
            <h1><?php echo $blog['Blog']['name'];?></h1>
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
                                $image = !empty($blog['Blog']['photo']) ? '../uploads/'.$blog['Blog']['photo'] : 'blog/11.jpg';
                                echo $this->HTML->image($image);
                            ?>
                        </figure>
                        <div class="lower-content">
                            <div class="date"><?php echo $this->Eco->getHumanDate($blog['Blog']['created']);?></div>
                                                        
                            <h4><?php echo $blog['Blog']['name'];?></h4>
                        </div>
                    </article>
                    <div class="content-box">
                        <div class="text">
                            <?php echo $blog['Blog']['description'];?>
                        </div>
                        <div class="outer-box">

                            <div class="share-box clearfix">
                                <ul class="tag-box pull-left">
                                    <li>Category: </li>
                                    <?php 
                                        $count = count($blog['Topic']); 
                                        foreach($blog['Topic'] as $index => $topic):?>
                                        <li><a href="#">
                                            <?php 
                                                echo $topic['name'];
                                                if($index != $count)
                                                {
                                                    echo ',';
                                                }
                                            ?>
                                                
                                            </a></li>
                                    <?php endforeach;?>
                                </ul>
                            </div>

                            <div class="post-author">
                                <div class="inner-box">
                                    <h4><?php echo $blog['Blog']['author'];?></h4>
                                    <h5>References</h5>
                                    <?php echo $this->Eco->iterateLinks($blog['Blog']['reference']);?>
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