<?php

App::uses('AppHelper', 'View/Helper');

class MaterialHelper extends AppHelper {
    public function input($fieldname, $options = []) {

    	$default_options = [
    		'type' => 'text',
    		'placeholder' => '',
    		'required' => true,
    		'helper' => ''
    	];

    	$options = array_merge($default_options,$options);
    	$options['required'] = true;

    	$required = $options['required'] ? "required" : "";

		$output = "<div class='material-input-group'>      
					<input type='".$options['type']."' name='".$fieldname."' ".$required.">
					<span class='highlight'></span>
					<span class='bar'></span>";
					if(!empty($options['placeholder']))
					{
						$star = $options['required'] ? " *" : "";
						$output .= "<label>".$options['placeholder'].$star."</label>";
					}
					
					if(!empty($options['helper']))
					{
						$output .= "<p class='helper-text'>Something you feel like references you</p>";	
					}
					
		$output .= "</div>";

		echo $output;
    }
}
?>