<?php

require_once '.' . DIRECTORY_SEPARATOR . 'dbConnectionFunction.php';

/**Function retrieves data from the DB and returns in an array called $quotes
 *
 * @param $db
 *
 * @return mixed
 */
function getQuotesData($db) {
    $query = $db->prepare('SELECT * FROM `quotes` INNER JOIN `images` ON `quotes`.`id` = `images`.`quotes-ID`');
    $query->execute();
    $quotes = $query->fetchAll();
    return $quotes;
}
