<?php

class Styles_Scripts

{

    public function __construct()
    {
        add_action('wp_enqueue_scripts',array( $this,'theme_moderna_scripts'));
    }

    function theme_moderna_scripts() 
    {
        // подключаем файл стилей темы
        wp_enqueue_style('bootstrap', get_template_directory_uri(). '/assets/css/bootstrap.min.css', 'style');
        wp_enqueue_style('fancybox', get_template_directory_uri() . '/assets/css/fancybox/jquery.fancybox.css', 'style');
        wp_enqueue_style('flexslider', get_template_directory_uri() . '/assets/css/flexslider.css', 'style');
        wp_enqueue_style('skin', get_template_directory_uri() . '/assets/skins/default.css', 'color');
        wp_enqueue_style('style', get_stylesheet_uri() );
        // подключаем js файл темы
        wp_enqueue_script('jquery', get_template_directory_uri() . '/assets/js/jquery.js', 'jquery');
        wp_enqueue_script('easing', get_template_directory_uri() . '/assets/js/jquery.easing.1.3.js','jquery', '1.3.0', true);
        wp_enqueue_script('bootstrap', get_template_directory_uri() . '/assets/js/bootstrap.min.js','jquery', '1.4.8', true);
        wp_enqueue_script('fancybox', get_template_directory_uri() . '/assets/js/jquery.fancybox.pack.js','jquery', '1.9.2', true);
        wp_enqueue_script('fancybox-media', get_template_directory_uri() . '/assets/js/jquery.fancybox-media.js','jquery', '2.2.0', true);
        wp_enqueue_script('prettify', get_template_directory_uri() . '/assets/js/google-code-prettify/prettify.js','jquery', '1.4.8', true);
        wp_enqueue_script('quicksand', get_template_directory_uri() . '/assets/js/portfolio/jquery.quicksand.js','jquery', '1.9.2', true);
        wp_enqueue_script('portfolio', get_template_directory_uri() . '/assets/js/portfolio/setting.js','jquery', '1.9.2', true);
        wp_enqueue_script('flexslider', get_template_directory_uri() . '/assets/js/jquery.flexslider.js','jquery', '1.9.2', true);
        wp_enqueue_script('animate', get_template_directory_uri() . '/assets/js/animate.js','jquery', '1.9.2', true);
        wp_enqueue_script('maps','https://maps.google.com/maps/api/js?sensor=true','jquery', '1.3', true);
        wp_enqueue_script('gmap', get_template_directory_uri() . '/assets/js/jquery.gmap.min.js','jquery', '2.1.2', true);
        wp_enqueue_script('verify', get_template_directory_uri() . '/assets/js/verify.js','jquery', '1.0', true);
        wp_enqueue_script('custom', get_template_directory_uri() . '/assets/js/custom.js','jquery', '1.0.0', true);
    }

}