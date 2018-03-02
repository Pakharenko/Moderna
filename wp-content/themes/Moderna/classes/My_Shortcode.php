<?php

class My_Shortcode

{
    public function __construct()
    {
        add_shortcode('myshort', array($this,'shortcode_func'));
    }
    
    public function shortcode_func( $atts )
    {
        $atts = "Pakharenko";
        return $atts;
    }
}