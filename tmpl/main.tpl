<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="<?=$this->meta_desc?>">
    <meta name="keywords" content="<?=$this->meta_key?>">
    <link rel="stylesheet" type="text/css" href="css/style.css" >
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="js/javascript.js"></script>
    <title><?=$this->title?></title>
  </head>
  <body>
  <!-- Begin id="main-site"-->
    <div id="main-site">
    <!-- Begin id="header"-->
    <div id="header">
    <!-- Begin id="top"-->
      <div id="top">
      <!-- Begin id="topmenu"-->
        <div id="topmenu">
            <a href="<?=$this->index?>"> Главная</a>
            <a href="<?=$this->link_catalog?>"> Каталог</a>
            <a href="<?=$this->link_delivery?>"> Доставка</a>
            <a href="<?=$this->link_shops?>"> Наши магазины</a>
            <a href="<?=$this->link_wholesaler?>"> Оптавикам</a>
            <a href="<?=$this->link_contacts?>"> Контакты</a>
          <div id="topsearch">
            <form method="<?=$this->link_search?>" action="" id="search-form">
              <input name="search" type="text" name="" placeholder="Поиск по коталогу">
              <input type="submit" name="" value="">
            </form>
          </div>
        </div>
        <!-- end id="topmenu"-->
      </div>
      <!-- end id="top"-->
      <a href="" id="logo"></a>
      <div id="call">
        <label class="kod">(+996)</label>556884996<label class="kod">,</label>
        <label class="kod">(+996)</label>556884996
      </div>
      <div id="mail">
        <a href="" id="send-mail">Написать сообщение</a>
      </div>
      <div id="icq">
        288-22-88
      </div>
      <div id="card">
        <a href="<?=$this->cart_link?>" id="emtyCard">В корзине <span><?=$this->cart_count?></span><span>товара</span></a>
      </div>
      <div id="login">
        <a href="<?=$this->link_userpage?>" id="userlog">Личный кабинет</a>
      </div>
    </div>
    <!-- end id="header"-->
    <!-- Begin id="content"-->
    <div id="content">
    <!-- Begin id="left-block"-->
      <div id="left-block">
      <!-- Begin id="catigory"-->
        <div id="catigory">
        <ul class="menu">
<?php for ($i = 0; $i < count($this->items); $i++) { ?>
    <li <?php if ($this->items[$i]["subsection_id"] == 1) {?>class="menu_list">
                  <ul class="menu_drop">
 <?php for ($j = 0; $j < count($this->subitems); $j++) {
                      if ($this->items[$i]["id"] == $this->subitems[$j]["section_id"]) {?>
                      <li><a href="<?=$this->subitems[$j]["link"]?>"><?=$this->subitems[$j]["title"]?></a></li><?}?><? }?>    
                   </ul>
             <?php  }
              else{?>><?}?>

            <a href="<?=$this->items[$i]["link"]?>"><?=$this->items[$i]["title"]?></a>
          </li>
        <?php }?>

        </ul>
        </div>
        <!-- end id="catigory"-->
        <div id="info">
          <lable class="info-date">12.10.2011</lable>
          <a href="">много скидок</a>
          <lable class="info-all">Скоро ноябрь, а это значит, что скоро вас ждет большое количество скидок в связи с нашим юбелеем.</lable>
        </div>
        <div class="info-left">
          <lable class="info-date">12.10.2011</lable>
          <a href="">обменяй старое на новое</a>
          <lable class="info-all">Скоро ноябрь, а это значит, что скоро вас ждет большое количество скидок в связи с нашим юбелеем.</lable>
        </div>
        <div class="info-left">
          <lable class="info-date">12.10.2011</lable>
          <a href="">обновление каталогах</a>
          <lable class="info-all">Скоро ноябрь, а это значит, что скоро вас ждет большое количество скидок в связи с нашим юбелеем.</lable>
        </div>
        <div id="write-us">
          <a href="">Написать нам </a>
        </div>
        <a href=""class="left-banner"></a>
        <a href=""class="left-banner"></a>
      </div>
      <!-- end id="left-block"-->
      <!-- Begin id="right-block"-->
      
      <div id="right-block">
        <?php include "content_".$this->content.".tpl"; ?>
      </div>
    <!-- end id="right-block"-->
  </div>
  <!-- end id="content"-->
  <!-- Begin id="footer"-->
  <div id="footer">
    <a href="<?=$this->index?>"> Главная</a>
    <a href="<?=$this->link_catalog?>"> Каталог</a>
    <a href="<?=$this->link_delivery?>"> Доставка</a>
    <a href="<?=$this->link_shops?>"> Наши магазины</a>
    <a href="<?=$this->link_wholesaler?>"> Оптавикам</a>
    <a href="<?=$this->link_contacts?>"> Контакты</a>
  </div>
  <!-- end id="footer"-->
  <!-- Begin id="contact"-->
  <div id="contact">
    © 2007-2011 Интернет-супермаркет «Elwau.ru»
    Адрес: 105118, г.Москва, ул. Кирпичная, д. 22
    Тел.: +7 (495) 540-55-11, 8 (800) 555-55-90
    Email: info@elwau.ru
  </div>
  <!-- end id="contact"-->
  <!-- Begin id="developer"-->
  <div id="developer">
    Разработчик сайта - <a href="">Осмонов Санжар</a>
  </div>
  <!-- Begin id="developer"-->
</div>
<!-- end id="main-site"-->
  </body>
</html>
