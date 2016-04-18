<?php
require_once "global_class.php";


/**
* obrabotka tablisy s tovarami
*/
class SubSection extends GlobalClass{
	
	function __construct()	{
		parent::__construct("subsection_id");
	}

	public function getAllData(){

		return $this->transform($this->getAll("id"));
	}
	protected function transformElement($subsection){
		$subsection["link"] = $this->url->subsection($subsection["id"]);
		return $subsection;
	}
}

?>