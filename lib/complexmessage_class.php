<?php
require_once "globalmessage_class.php";


/**
* rabota s soobsheniyami i email pismami
*/
abstract class ComplexMessege extends GlobalMessage {


	public function getTitle($name){
		return $this->get($name."_TITLE");
	}

	public function getText($name){
		return $this->get($name."_TEXT");
	}

}

?>