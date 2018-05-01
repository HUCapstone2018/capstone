
<?php
    $plugin = 'ecospots';
    $action = 'index';

    $modal_data = [
        'placeholder' => [
            'en' => [
                'topic' => 'Search Topic',
                'activity' => 'Search Activities',
                'spot' => 'Search Spots'
            ],
            'ar' => [
                'topic' => 'Search Topic',
                'activity' => 'Search Activities',
                'spot' => 'Search Spots'
            ]
        ],
        'Modal' => [
                'topic' => 'Topic',
                'activity' => 'Activity',
                'spot' => 'Spot'
        ],
        'Controller' => [
                'topic' => 'blogs',
                'activity' => 'spots',
                'spot' => 'events'
        ],
        'Params' => [
                'topic' => 'topic',
                'activity' => 'activity',
                'spot' => 'spot'
        ]
    ];

    $language = 'en';
    $controller = $modal_data['Controller'][$search];
    $arabic_prefix = '';
    if(isset($lang) && $lang == 'ar')
    {
        $language = 'ar';
        $arabic_prefix = 'ar_';
    }
?>
<div id="searchModal" data-search = "<?=$search?>" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <input id = "searchModalInput" type="text" placeholder = "<?=$modal_data['placeholder'][$language][$search]?>" class="form-control">
            </div>

            <div id="searchResultsContainer" class="modal-body">
                <?php foreach($modal as $row):?>
                    <a class="search-result" href="<?=$this->HTML->url([
                            'plugin' => $plugin,
                            'controller' => $controller,
                            'action' => $action,
                            $modal_data['Params'][$search] => $row[$modal_data['Modal'][$search]]['slug']
                        ])?>">
                        <h4><?=$row[$modal_data['Modal'][$search]][$arabic_prefix.'name']?></h4>
                    </a>
                <?php endforeach;?>
            </div>

        </div>

    </div>
</div>
