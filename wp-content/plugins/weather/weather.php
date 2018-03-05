<?php
/*
Plugin Name: Погода
Description: Прогноз погоды на сайте
Plugin URI: http://wp-site
Author: Pakharenko
Author URI: http://wp-site
*/

$resp = wp_remote_get( 'http://api.apixu.com/v1/current.json?key=ed4694f8f29a49e4b52122351180503&q=Kharkiv' );
$res = json_decode($resp['body']);

echo "Температура воздуха в городе <b>{$res->location->name}</b> сейчас <b>{$res->current->temp_c}</b>  градусов";