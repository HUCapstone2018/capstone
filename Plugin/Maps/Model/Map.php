<?php

App::uses('MapsAppModel', 'Maps.Model');

/**
 * Map
 *
 * @category Maps.Model
 * @package  Croogo.Maps.Model
 * @version  1.0
 * @author   Avo Sarafian <me@avosarafian.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.avosarafian.com
 */
class Map extends MapsAppModel{

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Map';

/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Map.id DESC';

/**
 * Model associations: hasMany
 *
 * @var array
 * @access public
 */
	public $hasMany = array(
		'Marker' => array(
			'className' => 'Menus.Marker',
			'foreignKey' => 'map_id',
			'dependent' => true
		),
	);

	
	protected $_displayFields = array(
									'id',
									'title',
									'latitude',
									'longitude',
									'status',
									'created'=>array("label"=>"Added Date")
								);

	protected $_editFields = array(
									'title'=>array("required"=>true),
									'slug'=>array("readonly"=>true, "class"=>"span10 slug"),
									'longitude'=>array("required"=>true),
									'latitude'=>array("required"=>true),
									'zoom'=>array("min"=>5, "max"=>20, "default"=>14),
									'type'=>array('label'=>'Map Layout Type','options'=>array("ROADMAP"=>"ROADMAP", "SATELLITE"=>"SATELLITE", "HYBRID"=>"HYBRID", "TERRAIN"=>"TERRAIN") ),
									'language'=>array(
											"label"=>"Map Language",
											"options"=> array(
													""=>"Select a language for the map",
													"ar"=>"ARABIC",
													"eu"=>"BASQUE",
													"bg"=>"BULGARIAN",
													"bn"=>"BENGALI",
													"ca"=>"CATALAN",
													"cs"=>"CZECH",
													"da"=>"DANISH",
													"de"=>"GERMAN",
													"el"=>"GREEK",
													"en"=>"ENGLISH",
													"en-AU"=>"ENGLISH (AUSTRALIAN)",
													"en-GB"=>"ENGLISH (GREAT BRITAIN)",
													"es"=>"SPANISH",
													"fa"=>"FARSI",
													"fi"=>"FINNISH",
													"fil"=>"FILIPINO",
													"fr"=>"FRENCH",
													"gl"=>"GALICIAN",
													"gu"=>"GUJARATI",
													"hi"=>"HINDI",
													"hr"=>"CROATIAN",
													"hu"=>"HUNGARIAN",
													"id"=>"INDONESIAN",
													"it"=>"ITALIAN",
													"iw"=>"HEBREW",
													"ja"=>"JAPANESE",
													"kn"=>"KANNADA",
													"ko"=>"KOREAN",
													"lt"=>"LITHUANIAN",
													"lv"=>"LATVIAN",
													"ml"=>"MALAYALAM",
													"mr"=>"MARATHI",
													"nl"=>"DUTCH",
													"no"=>"NORWEGIAN",
													"pl"=>"POLISH",
													"pt"=>"PORTUGUESE",
													"pt-BR"=>"PORTUGUESE (BRAZIL)",
													"pt-PT"=>"PORTUGUESE (PORTUGAL)",
													"ro"=>"ROMANIAN",
													"ru"=>"RUSSIAN",
													"sk"=>"SLOVAK",
													"sl"=>"SLOVENIAN",
													"sr"=>"SERBIAN",
													"sv"=>"SWEDISH",
													"tl"=>"TAGALOG",
													"ta"=>"TAMIL",
													"te"=>"TELUGU",
													"th"=>"THAI",
													"tr"=>"TURKISH",
													"uk"=>"UKRAINIAN",
													"vi"=>"VIETNAMESE",
													"zh-CN"=>"CHINESE (SIMPLIFIED)",
													"zh-TW"=>"CHINESE (TRADITIONAL)"
												)
										),
									'draggable'=>array("options"=>array(1=>"YES", 0=>"NO")),
									'element'=>array("required"=>false),
									'google_api_key'=>array("required"=>true),
									'status'=>array("class"=>"","isPublish"=>true,"default"=>true)
								);
}
?>
