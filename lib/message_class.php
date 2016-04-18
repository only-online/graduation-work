<?php
require_once "globalmessage_class.php";


/**
* rabota s soobsheniyami i email pismami
*/
class Messege extends GlobalMessage {


	public function __construct($file) {
		parent::__construct("messages");
	}

}

?>