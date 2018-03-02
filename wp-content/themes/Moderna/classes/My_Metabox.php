<?php

class My_Metabox

{

    public function __construct()
    {

        add_action('save_post', array($this,'my_extra_fields_update'));
        add_action('add_meta_boxes', array($this, 'my_extra_fields'));
    }

    public function my_extra_fields()
    {
       add_meta_box( 'extra_fields', 'Дополнительные поля', array($this,'extra_fields_box_func'), 'post', 'normal', 'high'  );
    }

    public function extra_fields_box_func( $post )
    {
        ?>
        <p><span style="display:block">Заголовок</span>
            <input type="text" name="extra[title]" value="<?php echo get_post_meta($post->ID, 'title', 1); ?>" style="width:50%" />
        </p>
        <p>Описание статьи
            <textarea type="text" name="extra[description]" style="width:100%;height:50px;"><?php echo get_post_meta($post->ID, 'description', 1); ?></textarea>
        </p>
        <input type="hidden" name="extra_fields_nonce" value="<?php echo wp_create_nonce(__FILE__); ?>" />
        <?php
    }

    public function my_extra_fields_update( $post_id )
    {
        if ( !isset($_POST['extra_fields_nonce']) || !wp_verify_nonce($_POST['extra_fields_nonce'], __FILE__) ) return false; // проверка
        if ( defined('DOING_AUTOSAVE') && DOING_AUTOSAVE  ) return false; // если это автосохранение
        if ( !current_user_can('edit_post', $post_id) ) return false; // если юзер не имеет право редактировать запись
        if( !isset($_POST['extra']) ) return false; 
        // Все ОК! Теперь, нужно сохранить/удалить данные
        $_POST['extra'] = array_map('trim', $_POST['extra']);

        foreach( $_POST['extra'] as $key=>$value ){
            if( empty($value) ){
                delete_post_meta($post_id, $key); // удаляем поле если значение пустое
                continue;
            }
            update_post_meta($post_id, $key, $value); // add_post_meta() работает автоматически
        }
        return $post_id;
    }

}
