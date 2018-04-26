<?php
$this->extend('/Common/admin_edit');

if (empty($modelClass)) {
    $modelClass = Inflector::singularize($this->name);
}

$this->Html
	->addCrumb('', '/admin', array('icon' => 'home'))
	->addCrumb(__d('review',"Reviews"), array('action' => 'index'));

if ($this->action == 'admin_edit') {
	$this->Html->addCrumb($this->request->data['Review']['name'], '/' . $this->request->url);
} else {
	$this->Html->addCrumb(__d('croogo', 'Add'), '/' . $this->request->url);
}

$this->append('form-start', $this->Form->create('Review'));

$this->append('tab-heading');
	
	$arabicTabs = [
	    'Review' => 'Arabic'
	];
	
	echo $this->Croogo->adminTab(__d('review',"Review"), '#review');
    echo $this->Croogo->adminTab(__d('review',$arabicTabs[$modelClass]), '#arabic');

	echo $this->Croogo->adminTabs();
$this->end();

$this->append('tab-content');

	echo $this->Html->tabStart('review');

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
