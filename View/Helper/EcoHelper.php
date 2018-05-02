<?php
App::uses('AppHelper', 'View/Helper');

class EcoHelper extends AppHelper
{
    public function getHumanDate($date) 
    {
        return date("F jS, Y", strtotime($date));
    }

    public function getLanguagePref(&$data,$lang)
    {
        if($lang == 'ar')
        {
            $data['name'] = $data['ar_name'];

            if(isset($data['description'])){$data['description'] = $data['ar_description'];}

            if(isset($data['excerpt'])){$data['excerpt'] = $data['ar_excerpt'];}
        }
    }

    public function excerpt($excerpt)
    {
    	return implode(' ', array_slice(explode(' ', $excerpt), 0, 100));
    }

    public function iterateLinks($data)
    {
        $chunks = explode("\n", $data);
        $string = "";
        foreach ($chunks as $chunk) 
        {
            $string .= '<a href = "'.$chunk.'">'.$chunk.'</a>';
        }
        return $string;
    }
}
?>