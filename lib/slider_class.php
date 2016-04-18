<?php
require_once "global_class.php";


/**
* obrabotka tablisy s tovarami
*/
class Slider extends GlobalClass{
	
	function __construct()	{
		parent::__construct("slider");
	}
	public function getAllData(){
		return $this->transform($this->getAll("id"));
	}
	protected function transformElement($slider){
		$slider["img"] = $this->config->dir_img_products.$slider["img"];
		$slider["link_cart"] = $this->url->addCart($slider["id"]);

		return $slider;
	}

}

?>