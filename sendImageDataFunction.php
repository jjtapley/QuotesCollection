<?php

/**Function finds the most recent quote id in database and adds 1 to get new quote-ID, then send image plus new quote-ID to DB
 *
 * @param $db
 * @param $image
 */
function sendImageData(PDO $db, string $image)  {
    $query1 = $db->prepare('SELECT `id` FROM `quotes` ORDER BY `id` desc LIMIT 1;');
    $query1->execute();
    $results = $query1->fetchAll();
    $quotesID = ($results[0]['id']) + 1;
    $query = $db->prepare('INSERT INTO `images` (`url`, `quotes-ID`) VALUES (:image, :quotesID)');
    $query->execute([':image'=>$image, ':quotesID'=>$quotesID]);
}

