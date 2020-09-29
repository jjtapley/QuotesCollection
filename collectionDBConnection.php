<?php

$db = new PDO ('mysql:host=db; dbname=OfficeQuotesDB', 'root', 'password');
$db -> setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
$query = $db->prepare('SELECT * FROM `quotes` INNER JOIN `images` ON `quotes`.`id` = `images`.`quotes-ID`');
$query->execute();
$quotes = $query->fetchAll();

?>