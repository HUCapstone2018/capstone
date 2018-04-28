<?php
    $this->Html->addCrumb("Blogs", [
        'plugin' => 'ecospots',
        'controller' => 'blogs', 
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



<section class="blog-large blog-section">
    <div class="container">

        <div>
                <div class="post-area">
                    <div class="row">
                        <div class="col-sm-12 search-button-container">
                            <button id="searchModalButton" type="button" class="btn" data-toggle="modal" data-target="#searchModal">Search</button>
                        </div>
                    </div>
                    <?php foreach($blogs as $blog) : ?>
                        <article class="row default-blog-news wow fadeInUp animated animated" style="visibility: visible; animation-name: fadeInUp;">
                            <figure class="img-holder col-md-4 col-sm-4">
                                <?php
                                    $image = !empty($blog['Blog']['photo']) ? '../uploads/'.$blog['Blog']['photo'] : 'blog/11.jpg';
                                ?>
                                <a href="<?php echo $this->HTML->url('/blog/'.$blog['Blog']['slug']);?>"><?php echo $this->HTML->image($image);?></a>

                            </figure>

                            <div class="lower-content col-md-8 col-sm-8">
                            
                                <div class="post-meta">By <?php echo $blog['User']['name'];?></div>
                                <a href="<?php echo $this->HTML->url('/blog/'.$blog['Blog']['slug']);?>"><h4><?php echo $blog['Blog']['name'];?></h4></a>
                                <div class="text">
                                    <?php echo implode(' ', array_slice(explode(' ', $blog['Blog']['excerpt']), 0, 100));?>               
                                </div>

                                <div class="date"><?php echo $this->Eco->getHumanDate($blog['Blog']['created']);?></div>
                                
                            </div>
                        </article>
                    <?php endforeach;?>
                    
                    <ul class="page_pagination center">
                        <?php echo $this->Paginator->prev("<",['class'=>'tran3s']); ?>
                        <?php echo $this->Paginator->numbers(['class'=>'tran3s']); ?>
                        <?php echo $this->Paginator->next(">",['class'=>'tran3s']); ?>
                    </ul>

                    <br/>
                    <br/>
                    <br/>

                </div>
                    
            </div>
           </div>
</section>

<?php echo $this->element('search-modal',['search'=>'topic']);?>