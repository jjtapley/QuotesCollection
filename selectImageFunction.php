<?php

require_once '.' . DIRECTORY_SEPARATOR . 'characterPicsURLs.php';

/**Function takes the $characterPics array and chooses as random picture of the character based on the user input $character. It returns the url, which can be sent to DB
 *
 * @param string $character
 * @param array  $characterPics
 *
 * @return string
 */
function selectImage(string $character, array $characterPics) :string {
    if (array_key_exists($character, $characterPics)) {
        shuffle ($characterPics[$character]);
        $pic = $characterPics[$character][0];
        return $pic;
    }
}