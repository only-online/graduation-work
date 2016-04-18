<?php
require_once "complexmessage_class.php";


/**
* rabota s soobsheniyami i email pismami
*/
class Email extends ComplexMessege {

	public function __construct() {
		parent::__construct("emails")
	}

}

?>