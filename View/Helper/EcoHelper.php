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
}
?>