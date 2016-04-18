<?php
require_once "global_class.php";


/**
* obrabotka tablisy s tovarami
*/
class Order extends GlobalClass{
	
	function __construct()	{
		parent::__construct("orders");
	}
}

?>