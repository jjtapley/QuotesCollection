<?php
require_once '.' . DIRECTORY_SEPARATOR . 'displayDBContentFunction.php';

$db = new PDO ('mysql:host=db; dbname=OfficeQuotesDB', 'root', 'password');
$db -> setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
$query = $db->prepare('SELECT * FROM `quotes` INNER JOIN `images` ON `quotes`.`id` = `images`.`quotes-ID`');
$query->execute();
$quotes = $query->fetchAll();

?>

<!DOCTYPE html>

<html>
    <head>
        <meta charset ="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>The Office US Sitcom Quotes Collection</title>
        <link type="text/css" rel="stylesheet" href="normalize.css">
    </head>

    <body>
        <div>
            <h1>The Office US Sitcom - Quotes Collection</h1>
        </div>
        <?php displayDBContent($quotes);?>
    </body>
</html>

