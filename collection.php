<!DOCTYPE html>

<?php
require_once '.' . DIRECTORY_SEPARATOR . 'displayDBContentFunction.php';
require_once '.' . DIRECTORY_SEPARATOR . 'dbConnectionFunction.php';
require_once '.' . DIRECTORY_SEPARATOR . 'getQuotesDataFunction.php';
require_once '.' . DIRECTORY_SEPARATOR . 'sendQuotesDataFunction.php';
require_once '.' . DIRECTORY_SEPARATOR . 'sendImageDataFunction.php';
require_once '.' . DIRECTORY_SEPARATOR . 'selectImageFunction.php';
$db=dbConnection();
$quotes = getQuotesData($db);
?>

<html lang="en">
    <head>
        <meta charset ="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>The Office US Sitcom Quotes Collection</title>
        <link type="text/css" rel="stylesheet" href="normalize.css">
        <link type="text/css" rel="stylesheet" href="styling.css">
    </head>

    <body>
        <img class = "headerImage" src="images/titleImage.png" alt="The Office sitcom logo"/>
        <div class="header">
            <h1>US Sitcom</h1>
            <h1>Quotes Collection</h1>
            <audio src="images/theoffice.mp3" controls></audio>
        </div>
        <img class = "castPic" src="images/background.jpg" alt="picture of the cast of The Office"/>
        <div class = "grids">
            <?php echo displayDBContent($quotes);?>
        </div>
        <button class="addQuoteLink">
            <a href="addQuote.php">Add Quote</a>
        </button>
    </body>
</html>

<?php

if (isset($_POST['quote']) && isset($_POST['charName']) && isset($_POST['epName']) && isset($_POST['epNum']) && isset($_POST['season']) && isset($_POST['rating'])) {
    $quote = '"' . $_POST['quote'] . '"';
    $character = $_POST['charName'];
    $episode = "'" . $_POST['epName'] . "'" . " - Season " . $_POST['season'] . ", Episode " . $_POST['epNum'];
    $rating = $_POST['rating'];
    $image = selectImage($character, $characterPics);
    sendImageData($db, $image);
    sendQuotesData($db, $quote, $character, $episode, $rating);
}


var_dump($_POST);

?>
