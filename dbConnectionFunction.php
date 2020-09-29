<?php


/**Function creates a connection to the database
 *
 * @return PDO
 */
function dbConnection() {
    $db = new PDO ('mysql:host=db; dbname=OfficeQuotesDB', 'root', 'password');
    $db -> setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    return $db;
}

?>