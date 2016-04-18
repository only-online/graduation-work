<?php
require_once "config_class.php";

/**
* Класс базаданных
*/
class DataBase{

	private static $db = null;
	private $config;
	private $mysqli;

	public static function getDB(){
		if (self::$db == null) self::$db = new DataBase();
		return self::$db;
	}
	
	private function __construct()
	{
		$this->config = new Config();
		$this->mysqli = new mysqli($this->config->db_host, $this->config->db_user, $this->config->db_password, $this->config->db_name);
		$this->mysqli->query("SET NAME 'utf8'");
		$this->mysqli->query("SET CHARACTER SET 'utf8'");
	}
//obrabotka zaprosa
	private function getQuery($query, $params) {
		if ($params) {
			for ($i = 0; $i < count($params); $i++){
				$pos = strpos($query, $this->config->sym_query);
				$arg = "'".$this->mysqli->real_escape_string($params[$i])."'";
				$query = substr_replace($query, $arg, $pos, strlen($this->config->sym_query));
			}
		}
		return $query;
		// echo "$query";
	}
//vivod polnoy tablisi
	public function select($query, $params = false){
		$result_set = $this->mysqli->query($this->getQuery($query, $params));
		if (!$result_set) return false; 
			return $this->resultSetToArray($result_set);
	}
// vivod stroki
	public function selectRow($query, $params = false){
		$result_set = $this->mysqli->query($this->getQuery($query, $params));
		if ($result_set->num_rows != 1) return false;
			return $result_set->fetch_assoc();
	}
// vivod odnoy yacheyki
	public function selectCell($query, $params = false){
		$result_set = $this->mysqli->query($this->getQuery($query, $params));
		if ((!$result_set) || ($result_set->num_rows != 1)) return false;
			else{
				$arr = array_values($result_set->fetch_assoc());
			return $arr[0];
		}
	}
//pereobrazovanie zaprosa na massiv
	private function resultSetToArray($result_set){
		$array = array();
		while (($row = $result_set->fetch_assoc()) != false) {
			$array[] = $row;
		}
		return $array;

	}
	public function __destruct() {
		if ($this->mysqli) $this->mysqli->close();
	}
}

?>