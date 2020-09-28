<?php

function displayDBContent($quotes) {
    foreach ($quotes as $field) {
        echo '<div class="displayDB">';
            echo '<div class="images">';
                echo '<img src="' . $field['url'] . '"/>';
            echo '</div>';
            echo '<div class="collectionItems">';
                echo '<div>';
                echo '<h3>Quote:</h3>';
                echo '<p>' . $field['quote'] . '</p>';
            echo '</div>';
            echo '<div>';
                echo '<h3>Who Said It:</h3>';
                echo '<p>' . $field['whoSaidIt'] . '</p>';
            echo '</div>';
            echo '<div>';
                echo '<h3>Episode:</h3>';
                echo '<p>' . $field['episode'] . '</p>';
            echo '</div>';
            echo '<div>';
                echo '<h3>Hilarit-O-Meter:</h3>';
                echo '<p>' . $field['hilarity-ometer'] . '</p>';
                echo '</div>';
            echo '</div>';
        echo '</div>';
    }
}