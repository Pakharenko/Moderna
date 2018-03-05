<?php

require_once __DIR__ . '/classes/autoload.php';

new Styles_Scripts();
new My_Slider();
new My_Metabox();
new My_Shortcode();
new My_Taxonomy();
new My_Weather();

add_theme_support('post-thumbnails');

register_nav_menus(array(
	'top'    => 'Верхнее меню',
	'bottom' => 'Нижнее меню'
));

function register_my_weather() {
    register_widget( 'My_Weather' );
}
add_action( 'widgets_init', 'register_my_weather' );

// Widgets
add_action( 'widgets_init', 'register_my_widgets' );
function register_my_widgets(){
	register_sidebar( array(
		'name'          => 'Тестовый Сайдбар',
		'id'            => "sidebar_right",
		'description'   => '',
		'class'         => '',
		'before_widget' => '',
		'after_widget'  => "",
		'before_title'  => '<h2 class="widgettitle">',
		'after_title'   => "</h2>\n",
	) );
}


/* ------------------------------------------------------------ */
//Function Tags
function get_list_tags() {
	$tags = get_the_tags();
	$tag_str = null;
	if ($tags) {
		foreach ($tags as $tag) {
			$tag_str .= $tag->name . ', ';
		}
		$tag_str = rtrim($tag_str, ', ');
	}
	return $tag_str;
}
/* ------------------------------------------------------------ */
// Breadcrumbs
function the_breadcrumb() {
	$breadcrumbs = new Breadcrumbs();
	return $breadcrumbs->the_breadcrumbs();
}
/* ------------------------------------------------------------ */


function my_more_options() {
	add_settings_field(
		'text',
		'Текст на главной',
		'display_text',
		'general'
	);

	register_setting(
		'general',
		'my_text'
	);
}

add_action('admin_init', 'my_more_options');
function display_text() {
	echo "<input class='regular-text' type='text' name='my_text' value='".esc_attr(get_option('my_text'))."'>";
}

// register My_Widget widget
function register_my_widget() {
    register_widget( 'My_Widget' );
}
add_action( 'widgets_init', 'register_my_widget' );


// ---------------------------------------------------------------- //

//    $url = 'http://www.cbr.ru/scripts/XML_daily.asp';
//    $expiration = DAY_IN_SECONDS / 2;
//    $resp = wp_remote_get( $url );
//
//    if ( wp_remote_retrieve_response_code($resp) === 200 ) {
//
//        $body = wp_remote_retrieve_body( $resp );
//
//        $xml = simplexml_load_string($body);
//        $data = json_decode(json_encode($xml));
//
//        $USD = wp_list_filter( $data->Valute, array('CharCode'=>'USD') );
//        $USD = array_shift($USD);
//
//        $UAH = wp_list_filter( $data->Valute, array('CharCode'=>'UAH') );
//        $UAH = array_shift($UAH);
//
//        $EUR = wp_list_filter( $data->Valute, array('CharCode'=>'EUR') );
//        $EUR = array_shift($EUR);
//
//
//        $usd_in_rub = $USD->Value;
//        $usd_in_uah = $UAH->Value;
//        $usd_in_eur = $EUR->Value;
//
//}
//
//echo '<h4>Курс доллара к рублю на сегодня: $1 = '. $usd_in_rub .' руб.</h4>';
//echo '<h4>Курс доллара к гривне на сегодня: $1 = '. $usd_in_uah .' руб.</h4>';
//echo '<h4>Курс доллара к Евро на сегодня: $1 = '. $usd_in_eur .' руб.</h4>';


// ---------------------------------------------------------------- //

//$resp = wp_remote_get( 'http://api.apixu.com/v1/current.json?key=ed4694f8f29a49e4b52122351180503&q=Kharkiv' );
//var_dump($resp['body']);
//$res = json_decode($resp['body']);
//
//echo "Температура воздуха в городе <b>{$res->location->name}</b> сейчас <b>{$res->current->temp_c}</b>  градусов";

