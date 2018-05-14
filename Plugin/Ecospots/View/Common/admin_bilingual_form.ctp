<?php
//$this->viewVars['title_for_layout'] = __d('projects', $model_name);
$this->extend('/Common/admin_edit');

if (empty($modelClass)) {
    $modelClass = Inflector::singularize($this->name);
}

$arabicTabs = [
    'Spot' => 'المكان',
    'Animal' => 'الحيوان',
    'Plant' => 'النبتة',
    'Activity' => 'نشاطاط',
    'Event' => 'مناسبة',
    'Review' => 'Arabic',
    'Blog' => 'Arabic',
    'Topic' => 'Arabic'
];

$this->Html
    ->addCrumb('', '/admin', array('icon' => 'home'))
    ->addCrumb(__d('spot',$modelClass."s"), array('action' => 'index'));

if ($this->action == 'admin_edit') {
    $this->Html->addCrumb($this->request->data[$modelClass]['name'], '/' . $this->request->url);
} else {
    $this->Html->addCrumb(__d('croogo', 'Add'), '/' . $this->request->url);
}

$this->append('form-start', $this->Form->create($modelClass));

$this->append('tab-heading');
    echo $this->Croogo->adminTab(__d('spot',$modelClass), '#spot');
    //echo $this->Croogo->adminTab(__d('spot',$arabicTabs[$modelClass]), '#arabic');
    echo $this->Croogo->adminTabs();
$this->end();

$this->append('tab-content');

    echo $this->Html->tabStart('spot');

        $control = "ProjectAttachment";//$modelClass.str_replace(" ", "",ucwords(str_replace("_", "  ", $field)));
        $content = "";
        foreach ($editFields as $field => $options):
            if(strpos($field, "photo") !== false)
            {
                $options['style'] = 'width: 300px; margin-right: 10px;';
                $content .= $this->Form->input($field, $options);
                $control = $modelClass.str_replace(" ", "",ucwords(str_replace("_", "  ", $field)));
                $content .= '<div id="m'.$control.'"><a href="javascript:void(0);" onclick=\'javascript:window.open("'. $this->webroot.'admin/file_manager/attachments/custom?controler='.$control.'","browserWin",
                    "menubar=no,width=1050,height=600,toolbar=no,scrollbars=yes");\' class="attachment_link" >Attach a File</a></div>';
                $content .= '<script type="text/javascript">$(document).ready(function(){var temp = $("#m'.$control.'").html(); $("#m'.$control.'").empty(); $("#'.$control.'").parent().append(temp);});</script>';
            }
            else
            {
                $content .= $this->Form->input($field, $options);
            }
        endforeach;

        echo $content;

    echo $this->Html->tabEnd();

    echo $this->Html->tabStart('arabic');
    
        echo $this->Form->input('ar_name',[
            'label' => 'الاسم'
        ]);

        if(isset($editFields['excerpt']))
        {
            echo $this->Form->input('ar_excerpt',[
                'label' => 'مقتطف'
            ]);
        }

        if(isset($editFields['description']))
        {
            echo $this->Form->input('ar_description',[
                'label' => 'المعلومات'
            ]);
        }
        
    
    echo $this->Html->tabEnd();




    echo $this->Croogo->adminTabs();

$this->end();

$this->append('panels');
    echo $this->Html->beginBox(__d('croogo', 'Publishing')) .
        // $this->Form->input('status', array(
        //  'label' =>  __d('projects', 'Status'),
        // )).
        // $this->Form->input('featured', array(
        //  'label' =>  __d('projects', 'Featured on Homepage?'),
        // )).
        // $this->Form->input('Project.sponsor_id', array(
        //  'label' =>  __d('projects', 'Brand'),
        //  'options'=>$editFields['Project.sponsor_id']['options'] 
        // )).
        // $this->Form->input('Project.collection_id', array(
        //  'label' =>  __d('projects', 'Collection'),
        //  'options'=>$editFields['Project.collection_id']['options'] 
        // )).
        $this->Form->button(__d('croogo', 'Save'), array('button' => 'primary')) .
        $this->Html->link(__d('croogo', 'Cancel'), array('action' => 'index'), array('button' => 'danger'));
        // echo $this->Form->input('price', array(
        //  'label' =>  __d('spot', 'Price'),
        // ));  
    echo $this->Html->endBox();

    echo $this->Croogo->adminBoxes();
$this->end();

$this->append('form-end', $this->Form->end());
