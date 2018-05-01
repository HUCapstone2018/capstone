<?php
App::uses('AppHelper', 'View/Helper');

class EcoHelper extends AppHelper
{
    public function getHumanDate($date) 
    {
        return date("F jS, Y", strtotime($date));
    }

    public function getLanguagePref($data,$lang)
    {

    }

    public function excerpt($excerpt)
    {
    	return implode(' ', array_slice(explode(' ', $excerpt), 0, 100));
    }
}
?>