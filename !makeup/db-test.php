<?php
  $link = mysqli_connect('localhost','root','123');
  if(!$link)
    die('Connection error (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
 
  echo 'OK... ' . mysqli_get_host_info($link) . "\n";
  mysqli_close($link);
?>
