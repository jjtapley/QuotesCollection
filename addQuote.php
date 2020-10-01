<!DOCTYPE html>

<?php
require_once '.' . DIRECTORY_SEPARATOR . 'dbConnectionFunction.php';
require_once '.' . DIRECTORY_SEPARATOR . 'sendQuotesDataFunction.php';
require_once '.' . DIRECTORY_SEPARATOR . 'sendImageDataFunction.php';
require_once '.' . DIRECTORY_SEPARATOR . 'selectImageFunction.php';
$db = dbConnection();
?>

<html lang="en">
    <head>
        <meta charset ="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>The Office US Sitcom Quotes Collection - Add A Quote</title>
        <link type="text/css" rel="stylesheet" href="normalize.css">
        <link type="text/css" rel="stylesheet" href="styling.css">
    </head>
    <body>
        <header class = "page2header">
            <h1>Add a Quote</h1>
        </header>
        <main>
            <form method="post">
                <label for="quote">Quote:</label>
                <input type="text" id="quote" name="quote" onfocus="this.value=''" value="-- Type quote - don't worry about quote marks! --">
                <label for="character">Who Said It?:</label>
                <select id="character" name="charName">
                    <option hidden disabled selected value> -- select an option -- </option>
                    <option value="Andy Bernard">Andy Bernard</option>
                    <option value="Angela Martin">Angela Martin</option>
                    <option value="Creed Bratton">Creed Bratton</option>
                    <option value="Darryl Philbin">Darryl Philbin</option>
                    <option value="Dwight Schrute">Dwight Schrute</option>
                    <option value="Erin Hannon">Erin Hannon</option>
                    <option value="Holly Flax">Holly Flax</option>
                    <option value="Jan Levinson">Jan Levinson</option>
                    <option value="Jim Halpert">Jim Halpert</option>
                    <option value="Karen Filippelli">Karen Filippelli</option>
                    <option value="Kelly Kapoor">Kelly Kapoor</option>
                    <option value="Kevin Malone">Kevin Malone</option>
                    <option value="Meredith Palmer">Meredith Palmer</option>
                    <option value="Michael Scott">Michael Scott</option>
                    <option value="Oscar Martinez">Oscar Martinez</option>
                    <option value="Pam Beesly">Pam Beesly</option>
                    <option value="Phyllis Vance">Phyllis Vance</option>
                    <option value="Ryan Howard">Ryan Howard</option>
                    <option value="Stanley Hudson">Stanley Hudson</option>
                    <option value="Toby Flenderson">Toby Flenderson</option>
                </select>
                <label for="epName">Episode Name:</label>
                <input type="text" name="epName" id="epName">
                <label for="season">Season:</label>
                <select id="season" name="season">
                    <option hidden disabled selected value> -- select an option -- </option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                </select>
                <label for="epNum">Episode Number:</label>
                <select id="epNum" name="epNum">
                    <option hidden disabled selected value> -- select an option -- </option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                </select>
                <label for="rating">Hilaritometer Rating (1-10):</label>
                <select id="rating" name="rating">
                    <option hidden disabled selected value> -- select an option -- </option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                </select>
                <input type="submit" value="Submit">
            </form>
            <a href="collection.php" class="returnBTN"><button>Back to Collection</button></a>
        </main>
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
    echo '<h1>Quote Successfully Added!</h1>';
}
?>

