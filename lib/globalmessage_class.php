<?php
require_once "config_class.php";


/**
* rabota s soobsheniyami i email pismami
*/
abstract class GlobalMessage(){
	
	private $date;

	public function __construct($file)
	{
		$this->config = new Config();
		$this->data	= parse_ini_file($config->dir_text.$file.".ini");
	}

	public function get($ERROR_NAME){
		return $this->data[$name];
	}

}

?>