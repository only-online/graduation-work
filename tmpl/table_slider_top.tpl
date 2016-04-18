 <div id="slider">
       <!-- Begin class="info-slider"-->
    <div class="slider-elem" data-current="0">
      <?php for ($i=0; $i < count($this->slider) ; $i++) {?>
      <div class="slider-elem1">
        <div class="info-slider">
            <h1><?=$this->slider[$i]["title"]?></h1>
            <hr>
          <div class="type-slider">
            Тип:</br> 
            Шасси:</br> 
            Электродвигатели:</br> 
            Время полета: </br>
          </div>
          <div class="type-slider">
            <?=$this->slider[$i]["type"]?></br> 
            <?=$this->slider[$i]["chassis"]?></br> 
            <?=$this->slider[$i]["electric_motor"]?></br> 
            <?=$this->slider[$i]["flight_time"]?></br>
          </div>
          <hr>
        </div>
        <!-- end class="info-slider"-->
        <div id="slider-img">
          <img src="<?=$this->slider[$i]["img"]?>" width="292px" height="218px" title="<?=$this->slider[$i]["title"]?>">
        </div>
        <div id="cost-slider">
          <form method="post" action="<?=$this->slider[$i]["link_cart"]?>">
            <label class="cost">Цена</label><h2><?=$this->slider[$i]["price"]?></h2><label class="valut">Рублей</label>
            <input type="submit" value="В КОРЗИНУ">
          </form>
        </div>
      </div>
      <?}?>
    </div>
    </div>
              <a href="javascript: void(0)" onclick="return false" id="pre"></a>
              <a href="javascript: void(0)" onclick="return false" id="next"></a>