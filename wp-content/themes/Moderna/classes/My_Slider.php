<?php 

class My_Slider

{

    public function __construct()
    {
        add_action('init', array($this, 'my_slider'));
    }

    public function my_slider()
    {
        $labels = array(
            'name' => 'Slider', // Основное название типа записи
            'singular_name' => 'Slider', // отдельное название записи типа Slider
            'add_new' => 'Добавить новый',
            'add_new_item' => 'Добавить новый слайдер',
            'edit_item' => 'Редактировать слайдер',
            'new_item' => 'Новый слайдер',
            'view_item' => 'Посмотреть слайдер',
            'search_items' => 'Найти слайдер',
            'not_found' => 'Слайдер не найдено',
            'not_found_in_trash' => 'В корзине слайдер не найдено',
            'parent_item_colon' => '',
            'menu_name' => 'Slider',
        );
        $args = array(
            'labels' => $labels,
            'public' => true,
            'publicly_queryable' => true,
            'show_ui' => true,
            'show_in_menu' => true,
            'query_var' => true,
            'rewrite' => true,
            'capability_type'    => 'post',
            'has_archive' => true,
            'hierarchical' => false,
            'menu_position' => null,
            'supports' => array('title', 'editor', 'excerpt', 'thumbnail', 'page-attributes', 'custom-fields')
        );

        register_post_type('Slider', $args);
    }

}