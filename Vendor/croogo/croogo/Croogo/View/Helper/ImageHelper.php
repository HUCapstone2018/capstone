<?php

App::uses('Helper', 'View/Helper');

/**
 * @package Croogo.Croogo.View.Helper
 * @version 1.1
 * @author Josh Hundley
 * @author Jorge Orpinel <jop@levogiro.net> (changes)
 */
class ImageHelper extends Helper {

	public $helpers = array(
		'Html',
		'Theme' => array(
			'className' => 'Croogo.Theme',
		),
	);

/**
 * Automatically resizes an image and returns formatted IMG tag
 *
 * Options:
 * - aspect Maintain aspect ratio. Default: true
 * - uploadsDir Upload directory name. Default: 'uploads'
 * - cachedir Cache directory name. Default: 'resized'
 * - resizeInd: String to check in filename indicating that it was resized
 *
 * @param string $path Path to the image file, relative to the webroot/img/ directory.
 * @param integer $width Image of returned image
 * @param integer $height Height of returned image
 * @param array $options Options
 * @param array $htmlAttributes Array of HTML attributes.
 * @param boolean $return Whether this method should return a value or output it. This overrides AUTO_OUTPUT.
 * @return mixed Either string or echoes the value, depends on AUTO_OUTPUT and $return.
 * @access public
 */
	public function resize($path, $width, $height, $options = array(), $htmlAttributes = array(), $return = false) {
		if (is_bool($options)) {
			$options = array('aspect' => $options);
		}
		$options = Hash::merge(array(
			'aspect' => true,
			'uploadsDir' => 'uploads',
			'cacheDir' => 'resized',
			'resizedInd' => '.resized-',
		), $options);
		$aspect = $options['aspect'];
		$uploadsDir = $options['uploadsDir'];
		$cacheDir = $options['cacheDir'];
		$resizedInd = $options['resizedInd'];
		$imgClass = $this->Theme->getCssClass('thumbnailClass');

		if (empty($htmlAttributes['alt'])) {
			$htmlAttributes['alt'] = 'thumb';
		}

		if (!array_key_exists('class', $htmlAttributes)) {
			$htmlAttributes['class'] = $imgClass;
		} elseif (isset($htmlAttributes['class']) && $htmlAttributes['class'] !== false) {
			$htmlAttributes['class'] .= ' ' . $imgClass;
		}

		$sourcefile = WWW_ROOT . DS . $path;

		if (!file_exists($sourcefile)) {
			return;
		}

		$size = getimagesize($sourcefile);

		if ($aspect) {
			if (($size[1]/$height) > ($size[0]/$width)) {
				$width = ceil(($size[0]/$size[1]) * $height);
			} else {
				$height = ceil($width / ($size[0]/$size[1]));
			}
		}

		$dimension = $resizedInd . $width . 'x' . $height;
		$parts = pathinfo(WWW_ROOT . $path);
		if ($resizedInd === '') {
			// legacy format
			$filename = $parts['filename'];
			$filename = preg_replace('/^[0-9]*x[0-9]*_/', '', $filename);
			$resized = $width . 'x' . $height . '_' . $filename . '.' . $parts['extension'];
		} else {
			$filename = $parts['filename'];
			$filename = preg_replace('/' . preg_quote($resizedInd) . '[0-9]*x[0-9]*/', '', $filename);
			$resized = $filename . $dimension . '.' . $parts['extension'];
		}
		$relfile = '/';
		if ($uploadsDir) {
			$relfile .= ltrim($uploadsDir, '/') . '/';
		}
		if ($cacheDir) {
			$relfile .= ltrim($cacheDir, '/') . '/';
		}
		$relfile .= $resized;
		$cachefile = WWW_ROOT . ltrim($relfile, '/');

		$targetDir = dirname($cachefile);
		if (!is_dir($targetDir)) {
			mkdir($targetDir);
		}

		$cached = false;
		if (file_exists($cachefile)) {
			$csize = getimagesize($cachefile);

			// image is cached
			$cached = ($csize[0] == $width && $csize[1] == $height);

			// check if up to date
			if (filemtime($cachefile) < filemtime($sourcefile)) {
				$cached = false;
			}
		}

		if (!$cached) {
			$resize = ($size[0] > $width || $size[1] > $height) || ($size[0] < $width || $size[1] < $height);
		} else {
			$resize = false;
		}

		if ($resize) {
			$this->_resize($sourcefile, $size, $cachefile, $width, $height);
		} else {
			//copy($url, $cachefile);
		}

		return $this->output(sprintf($this->Html->_tags['image'], $this->webroot($relfile), $this->Html->_parseAttributes($htmlAttributes, null, '', ' ')), $return);
	}

/**
 * Convenience method to resize image
 *
 * @param string $source File name of the source image
 * @param array $sourceSize Result of getimagesize() against $source
 * @param string $target File name of the target image
 * @param int $w Target Image width
 * @param int $h Target image height
 * @return void
 */
	protected function _resize($source, $sourceSize, $target, $w, $h) {
		$types = array(1 => "gif", "jpeg", "png", "swf", "psd", "wbmp");
		$transparency = array("gif", "png");

		$format = $types[$sourceSize[2]];
		$sw = $sourceSize[0];
		$sh = $sourceSize[1];

		$image = call_user_func('imagecreatefrom' . $format, $source);
		if (function_exists('imagecreatetruecolor')) {
			$temp = imagecreatetruecolor($w, $h);
			if (in_array($format, $transparency)) {
				$this->_setupTransparency($temp, $w, $h);
			}
			imagecopyresampled($temp, $image, 0, 0, 0, 0, $w, $h, $sw, $sh);
		} else {
			$temp = imagecreate($w, $h);
			if (in_array($format, $transparency)) {
				$this->_setupTransparency($temp, $w, $h);
			}
			imagecopyresized($temp, $image, 0, 0, 0, 0, $w, $h, $sw, $sh);
		}
		call_user_func('image' . $format, $temp, $target);
		imagedestroy ($image);
		imagedestroy ($temp);
	}

/**
 * Convenience method to setup image transparency
 *
 * @param resource $image Image resource
 * @param int $w Width
 * @param int $h Height
 * @return void
 */
	protected function _setupTransparency($image, $w, $h) {
		imagealphablending($image, false);
		imagesavealpha($image, true);
		$transparent = imagecolorallocatealpha($image, 255, 255, 255, 127);
		imagefilledrectangle($image, 0, 0, $w, $h, $transparent);
	}
	
	/*
     * Array of all available image types
     */
    var $type = array(
        1 => 'gif',
        2 => 'jpg',
        3 => 'png'
    );
    
    /*
     * Tmp folder location for thumbs
     */
    public $tmpLocation = "/uploads/cropped";
	
    /* Crop
     * crop image passed through, if no image is passed return false 
     * 
     */
    
    function crop($obj = null, $width = 100, $height = 100, $options = null) 
    {
        /*debug($obj);
        debug(WWW_ROOT);
        debug($this->webroot);
        debug(WWW_ROOT . $obj);exit;*/
        $this->tmpLocation = WWW_ROOT . 'uploads' . DS . 'cropped' . DS;
		
        $file = WWW_ROOT . $obj;
        $name = substr($obj, strrpos($obj, '/') + 1);
        // debug($name);
		$attributes = "";
		if(!empty($options)){
			while(list($i) = each($options)){
				$attributes .= ' '.$i.'="'.$options[$i].'"';
			}
		}
		
        // assure that file exists
        if(is_file($file)){
            
            list($w, $h, $type) = getimagesize($file);
			
			if(($h<=$height) && ($w<=$width))
				return '<img src="' .  $this->webroot . $obj . '" rel="notprocessed"'.$attributes.' />';			
				
            // if the file is an image and not a swf or undetermined file
            if($type){
                
                $name = $width . 'x' . $height . '_' . $name;
                // check that file does not exist, if it does return image otherwise proceed
                if($this->checkFile($name)){
                
                    // get file ext for ease of use
                    $fileType = $this->type[$type];
                    
                    //loop through file type and prepare image for cropping
                    switch($fileType) {
                        case 'gif':
                            $img = imagecreatefromgif($file);
                            break;
                        case 'jpg':
                            $img = imagecreatefromjpeg($file);
                            break;
                        case 'png':
                            $img = imagecreatefrompng($file);
                            break;
                    }
                    
                    // determine larger side and size both appropriately
                    if($w > $h){
                        if($width > $height){
                            $ratio = $h/$width;
                        } else {
                            $ratio = $h/$height;
                        }
                    } else {
                        if($width > $height){
                            $ratio = $w/$width;
                        } else {
                            $ratio = $w/$height;
                        }
                    }
                    $new_width = round($w/$ratio);
                    $new_height = round($h/$ratio);
                    
                    // determine how far in to middle the crop should begin
                    $src_x = ($new_width - $width) / 2;
                    $src_y = ($new_height - $height) / 2;
                    
                    // create thumb placeholder and then create image
                    $thumb = imagecreatetruecolor($width, $height);
                    imagecopyresized($thumb, $img, 0, 0, $src_x, $src_y, $new_width, $new_height, $w, $h);
                    
                    imagejpeg($thumb, $this->tmpLocation . $name, 100);
                    
                }
                return '<img src="' .  $this->webroot . "uploads/cropped/".  str_replace(array(" ","&"),array("%20","&amp;"),$name) . '" rel="notprocessed"'.$attributes.' />';
                
            } else {
                $fileType = substr($file, strrpos($file, '.') + 1);
                return 'There is no preview for file ' . $name;
            }
        } else {
            return false;
        }
    }
    
    /* Check File
     * Check if file exists, if it does NOT then return true, else, return false
     * 
     */
    
    function checkFile($name){
        if(is_file($this->tmpLocation . $name)){
            return false;
        } else {
            return true;
        }
    }
}
