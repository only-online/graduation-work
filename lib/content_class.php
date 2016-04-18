<?php
require_once "modules_class.php";





class Content extends Modules {

	protected $title = "Интернет-магазин";
	protected $meta_desc = "Интернет-магазин по продаже игрушек";
	protected $meta_key = "Интернет-магазин,интернет магазин игрушки, игрушки, машины, игрушечные машины самалеты,";
	
	protected function getContent(){
		$this->template->set("table_products_title", "Новинки");
		$this->template->set("table_products_sale_title", "Распродажа");
		$this->template->set("products", $this->product->getAllData($this->config->count_on_page));
		$this->template->set("product", $this->productsale->getAllData($this->config->count_sale_page));
		return "index";
	}
}
?>