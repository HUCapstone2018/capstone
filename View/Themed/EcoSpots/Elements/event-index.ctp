<?php
    $this->Html->addCrumb("Events", [
        'plugin' => 'ecospots',
        'controller' => 'events', 
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

<section class="eventlist">
    <div class="container">
        <div class="row">
            <div class="row">
                <div class="col-sm-12 search-button-container">
                    <button id="searchModalButton" type="button" class="btn" data-toggle="modal" data-target="#searchModal">Search by Spots</button>
                </div>
            </div>
            <?php foreach($events as $event):?>
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="outer-box sec-padd event-style2">
                    <div class="item style-1 clearfix">
                        <div class="img-column float_left">
                            <figure class="img-holder">
                                <?php
                                    $image = !empty($event['Event']['photo']) ? '../uploads/'.$event['Event']['photo'] : 'blog/11.jpg';
                                ?>
                                <a href="<?php echo $this->HTML->url('/event/'.$event['Event']['slug']);?>"><?php echo $this->HTML->image($image);?></a>
                                <div class="date">
                                    <?php echo $this->Eco->getHumanDate($event['Event']['date']);?>
                                </div>
                            </figure>
                        </div>
                        <div class="text-column float_left">
                            <div class="lower-content">
                                <a href="<?php echo $this->HTML->url('/event/'.$event['Event']['slug']);?>">
                                    <h4>
                                        <?php echo $event['Event']['name'];?>
                                    </h4>
                                </a>
                                <div class="text">
                                     <?php echo $this->Eco->excerpt($event['Event']['excerpt']);?>  
                                </div>                            
                            </div>
                        </div>      
                    </div>               
                </div>
            </div>
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
        </div>
    </div>
</section>

<?php echo $this->element('search-modal',['search'=>'spot']);?>