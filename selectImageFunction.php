<?php


function selectImage($character) {
    if ($character === 'Michael Scott') {
        $michaelPics = ['https://relevantmagazine.com/wp-content/uploads/2019/05/michaelscottimpressions.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ3rmYE8JJDhLqEEQXoIroTIp07UZ23fmhAXg&usqp=CAU', 'https://consequenceofsound.net/wp-content/uploads/2019/06/Steve-Carell-as-Michael-Scott-.jpg?quality=80&w=807'];
        shuffle($michaelPics);
        $image = $michaelPics[0];
        return $image;
    } else if ($character === 'Dwight Schrute') {
        $dwightPics = ['https://vignette.wikia.nocookie.net/0bafa03d-495d-4153-a2be-89a999d1bb49/scale-to-width-down/800', 'https://ih1.redbubble.net/image.177068753.3440/flat,1000x1000,075,f.jpg', 'https://i.insider.com/5bf3215148eb1211ef7dc1a7?width=600&format=jpeg&auto=webp'];
        shuffle($dwightPics);
        $image = $dwightPics[0];
        return $image;
    }
}