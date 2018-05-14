<?php
$this->extend('/Common/admin_edit');

if (empty($modelClass)) {
    $modelClass = Inflector::singularize($this->name);
}

$this->Html
	->addCrumb('', '/admin', array('icon' => 'home'))
	->addCrumb(__d('spot',"Spots"), array('action' => 'index'));

if ($this->action == 'admin_edit') {
	$this->Html->addCrumb($this->request->data['Spot']['name'], '/' . $this->request->url);
} else {
	$this->Html->addCrumb(__d('croogo', 'Add'), '/' . $this->request->url);
}

$this->append('form-start', $this->Form->create('Spot'));

$this->append('tab-heading');
	
	$arabicTabs = [
	    'Spot' => 'المكان',
	    'Animal' => 'الحيوان',
	    'Plant' => 'النبتة'
	];
	
	echo $this->Croogo->adminTab(__d('spot',"Spot"), '#spot');
    //echo $this->Croogo->adminTab(__d('spot',$arabicTabs[$modelClass]), '#arabic');
	echo $this->Croogo->adminTab(__d('spot',"Animal Life"), '#animals');
	echo $this->Croogo->adminTab(__d('spot',"Plant Life"), '#plants');
	echo $this->Croogo->adminTab(__d('spot',"Activities"), '#activities');
	echo $this->Croogo->adminTab(__d('spot',"Location"), '#map');
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

        echo $this->Form->input('ar_description',[
            'label' => 'المعلومات'
        ]);
    
    echo $this->Html->tabEnd();
	
	echo $this->Html->tabStart('animals');
	
		echo $this->Form->input('Animal',[
			'multiple' => true,
			'options' => $animals,
			'label' => 'Animal Life residing in this area : ',
			'empty' => true,
			'class' => 'multi-select'
		]);
	
	echo $this->Html->tabEnd();

	echo $this->Html->tabStart('plants');
		
		echo $this->Form->input('Plant',[
			'multiple' => true,
			'options' => $plants,
			'label' => 'Plant Life present in this area : ',
			'empty' => true,
			'class' => 'multi-select'
		]);
	
	echo $this->Html->tabEnd();

	echo $this->Html->tabStart('activities');
		
		echo $this->Form->input('Activity',[
			'multiple' => true,
			'options' => $activities,
			'label' => 'Activities that can be done in this area : ',
			'empty' => true,
			'class' => 'multi-select'
		]);
	
	echo $this->Html->tabEnd();

	echo $this->Html->tabStart('map');

		echo $this->Form->input("Map.id",[
			'value' => empty($map) ? '' : $map['id']
		]);
		echo $this->Form->input("Map.latitude",[
			'label' => 'Latitude',
			'value' => empty($map) ? '' : $map['latitude']
		]);
		echo $this->Form->input("Map.longitude",[
			'label' => 'Longitude',
			'value' => empty($map) ? '' : $map['longitude']
		]);
		echo $this->Form->input("Map.zoom",[
			'label' => 'Zoom',
			'value' => empty($map) ? '' : $map['zoom']
		]);
	
	echo $this->Html->tabEnd();
	echo $this->Croogo->adminTabs();

$this->end();

$this->append('panels');
	echo $this->Html->beginBox(__d('croogo', 'Publishing')) .

		$this->Form->button(__d('croogo', 'Save'), array('button' => 'primary')) .
		$this->Html->link(__d('croogo', 'Cancel'), array('action' => 'index'), array('button' => 'danger'));

	echo $this->Html->endBox();

	echo $this->Croogo->adminBoxes();
$this->end();

$this->append('form-end', $this->Form->end());
