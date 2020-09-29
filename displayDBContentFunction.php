<?php

/**Function takes the field from the DB and converts them into readable sections that can be used on front end.
 *
 * @param array $quotes
 *
 * @return string
 */
function displayDBContent(array $quotes) :string {
    $display = '';
    foreach ($quotes as $field) {
       $display .= '<div class="displayDB">
                     <div class="images">
                         <img src="' . $field['url'] . '" alt="Image of ' . $field['whoSaidIt'] . ' from The Office US TV Show."/>
                     </div>
                     <div class="collectionItems">
                         <h3>Quote:</h3>
                         <p>' . $field['quote'] . '</p>
                         <h3>Who Said It:</h3>
                         <p>' . $field['whoSaidIt'] . '</p>
                         <h3>Episode:</h3>
                         <p>' . $field['episode'] . '</p>
                         <h3>HilaritOMeter:</h3>
                         <p>' . $field['hilarity-ometer'] . '</p>
                    </div>
                </div>';
        }
        return $display;
    }
