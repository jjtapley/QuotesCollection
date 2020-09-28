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
        <link type="text/css" rel="stylesheet" href="styling.css">
    </head>

    <body>
        <img class = "headerImage" src="titleImage.png" alt="The Office sitcom logo"/>
        <div class="header">
            <h1>US Sitcom</h1>
            <h1>Quotes Collection</h1>
        </div>
        <img class = "castPic" src="background.jpg" alt="picture of the cast of The Office"/>
        <div class = "grids">
            <?php displayDBContent($quotes);?>
        </div>

    </body>
</html>

