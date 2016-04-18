 <div class="sale">
     <a href="<?=$this->table_products_link?>" class="sale1"><?=$this->table_products_sale_title?></a>
        <?php for ($i=0; $i < count($this->product); $i++) { ?>
        	<div <?php if ($i % 3 == 0) {
        					echo 'class="tovar1"';
        				}
        			else {
        					echo 'class="tovar"';
        				 }?>>
            <a href="<?=$this->product[$i]["link"]?>" class="img_tovar">
            <div id="prosent-sale"><?=$this->product[$i]["sale"]?>%</div>
              <img src="<?=$this->product[$i]["img"]?>" width="194" height="146" title="<?=$this->product[$i]["title"]?>">
            </a>
            <label class="price"><span class="strikethrough"><?=$this->product[$i]["price"]?></span><?php
            $newprice = $this->product[$i]["price"] - ($this->product[$i]["price"] * ($this->product[$i]["sale"] / 100)); echo "$newprice";
            ?> р.</label>

            <a href="<?=$this->product[$i]["link"]?>" class="info_tovar"><?=$this->product[$i]["title"]?></a>
          </div>
        <?php }?>        
</div>