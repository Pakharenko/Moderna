<?php

class My_Taxonomy
{

    public function __construct()
    {
        add_action('init', array( $this,'my_custom_init'));
    }

    public function my_custom_init(){
        register_taxonomy('writer', 'home',array(
            'hierarchical' => false,
            'labels' => $labels,
            'show_ui' => true,
            'query_var' => true,
            'rewrite' => array( 'slug' => 'writer' ),
        ));

        register_post_type('home', array(
            'labels'             => array(
                'name'               => 'Тестовая страница', // Основное название типа записи
                'singular_name'      => 'Статья', // отдельное название записи типа Book
                'add_new'            => 'Добавить статью',
                'add_new_item'       => 'Добавить новую статью',
                'edit_item'          => 'Редактировать статью',
                'new_item'           => 'Новая книга',
                'view_item'          => 'Посмотреть статью',
                'search_items'       => 'Найти статью',
                'not_found'          =>  'Книг не найдено',
                'not_found_in_trash' => 'В корзине книг не найдено',
                'parent_item_colon'  => '',
                'menu_name'          => 'Тестовая страница'
            ),
            'public'             => true,
            'publicly_queryable' => true,
            'show_ui'            => true,
            'show_in_menu'       => true,
            'query_var'          => true,
            'rewrite'            => true,
            'capability_type'    => 'post',
            'has_archive'        => true,
            'hierarchical'       => false,
            'menu_position'      => null,
            'supports'           => array('title','editor','thumbnails','excerpt')
        ) );
         return add_action('init', 'my_custom_init');
    }
}