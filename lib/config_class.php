<?php
/**
* Конфигурации базы данных
*/
class Config{
	
	public $sitename = "auto.local";
	public $address = "http://auto.local/";
	public $db_host = "192.168.0.101";
	public $db_user = "root";
	public $db_password = "";
	public $db_name = "deviceshop-local";
	public $db_prefix = "sdve_";
	public $sym_query = "{?}";


	public $admname = "Осмонов Санжар";
	public $admemail = "sanzhar1992@test.com";


	public $count_on_page = 9;
	public $count_on_catalog = 18;
	public $count_sale_page = 6;

	public $dir_text = "lib/text/";
	public $dir_tmpl = "tmpl/";
	public $dir_img_products = "images/products/";



}


?>