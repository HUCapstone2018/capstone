<?php
    $this->Html->addCrumb("Animal Life", [
        'plugin' => 'ecospots',
        'controller' => 'animals', 
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

    $marine = false;
    if(isset($this->request->params['named']['marine']) && $this->request->params['named']['marine'] == 'yes')
        $marine = true;

    $danger = false;
    if(isset($this->request->params['named']['in-danger']) && $this->request->params['named']['in-danger'] == 'yes')
        $danger = true;
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
                    <label>is marine life</label>
                    <input id="animalMarineBox" type="checkbox" <?php if($marine===true){echo 'checked="true"';}?>">
                </div>

                <div class="form-grp-inline col-md-4 col-sm-12">
                    <label>is in dangered</label>
                    <input id="animalDangerBox" type="checkbox" <?php if($danger===true){echo 'checked="true"';}?>">
                </div>

                <div class="form-grp-inline col-md-4 col-sm-12">
                    <input id="animalNameBox" type="text" class="ecospots-textbox" placeholder="Search by Name">
                    <button id="animalNameButton" class="btn ecospots-button">Search</button>
                </div>
            </div>
        </div>
        <div class="row service js-search">
            <?php foreach($animals as $animal) : ?>
                <a class="col-md-3 col-sm-6 col-x-12 js-search-element" href="<?php echo $this->HTML->url("/ecospots/spots/index/animal:".$animal['Animal']['slug']);?>">
                    <div class="service-item center">
                        <div class="icon-box">
                            <i class="fa fa-paw"></i>
                        </div>
                        <h4 class="caps-title"><?=$animal['Animal']['name']?></h4>
                    </div>
                </a>
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