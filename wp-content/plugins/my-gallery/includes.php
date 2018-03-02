<?php

add_action( 'wp_enqueue_scripts', 'wfm_styles_scripts' );

function wfm_styles_scripts()
{
	wp_register_script( 'wfm-lightbox-js', plugins_url( 'js/lightbox.min.js', __FILE__ ), array('jquery') );
	wp_register_style( 'wfm-lightbox', plugins_url( 'css/lightbox.css', __FILE__ ) );
	wp_register_style( 'wfm-lightbox-style', plugins_url( 'css/lightbox-style.css', __FILE__ ) );

	wp_enqueue_script( 'wfm-lightbox-js' );
	wp_enqueue_style( 'wfm-lightbox' );
	wp_enqueue_style( 'wfm-lightbox-style' );
}