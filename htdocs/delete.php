<?php
    require 'connect.php';
    $max = $_GET["max"];
    for($i=0; $i<$max;$i++){
        $sql = 'DELETE from Météo WHERE ville = "'.$_GET[$i].'" ';
        $nb = $pdo->exec($sql);
    }
?>