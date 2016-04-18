 <div class="sale">
     <a href="<?=$this->table_products_link?>" class="sale1"><?=$this->table_products_title?></a>
        <?php for ($i=0; $i < count($this->products); $i++) { ?>
        	<div <?php if ($i % 3 == 0) {
        					echo 'class="tovar1"';
        				}
        			else {
        					echo 'class="tovar"';
        				 }?>>
            <a href="<?=$this->products[$i]["link"]?>" class="img_tovar">
              <img src="<?=$this->products[$i]["img"]?>" width="194" height="146" title="<?=$this->products[$i]["title"]?>">
            </a>
            <label class="price"><?=$this->products[$i]["price"]?> р.</label>

            <a href="<?=$this->products[$i]["link"]?>" class="info_tovar"><?=$this->products[$i]["title"]?></a>
          </div>
        <?php }?>        
</div>