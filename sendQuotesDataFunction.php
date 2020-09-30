<?php

require_once '.' . DIRECTORY_SEPARATOR . 'addQuote.php';

/**Function takes in user input from form and inserts into database
 *
 * @param $db
 * @param $quote
 * @param $character
 * @param $episode
 * @param $rating
 *
 * @return array
 */
function sendQuotesData(PDO $db, string $quote, string $character, string $episode, int $rating) :void {
    $query = $db->prepare('INSERT INTO `quotes` (`quote`, `whoSaidIt`, `episode`, `hilarity-ometer`) VALUES (:quote, :charName, :episode, :rating)');
    $query->execute([':quote'=>$quote, ':charName'=>$character, ':episode'=>$episode, ':rating'=>$rating]);
}





