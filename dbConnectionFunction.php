<?php

/**Function creates a connection to the database
 *
 * @return PDO
 */
function dbConnection() :PDO {
    $db = new PDO ('mysql:host=db; dbname=OfficeQuotesDB2', 'root', 'password');
    $db -> setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    return $db;
}

?>