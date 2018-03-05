<?php

class My_Weather extends WP_Widget {

    function __construct() {
        parent::__construct(
            'my_weather', // Base ID
            esc_html__( 'Погода', 'text_domain' ), // Name
            array( 'description' => esc_html__( 'Погода на Вашем сайте', 'text_domain' ), ) // Args
        );
    }

    public function widget( $args, $instance ) {

        $city = $instance['title'];

        echo $args['before_widget'];
        if ( ! empty( $instance['title'] ) ) {
            echo $args['before_title'] . apply_filters( 'widget_title', 'Погода' ) . $args['after_title'];
        }

        $resp = wp_remote_get( 'http://api.apixu.com/v1/current.json?key=ed4694f8f29a49e4b52122351180503&q='.$city );
        $res = json_decode($resp['body']);

        echo "<div class='widget_text_weather'>";
//        echo "<h4>Погода в городе {$res->location->name}</h4>";
        echo "<img  src='{$res->current->condition->icon}' alt=''><span style='padding-left: 10px; '><b>{$res->location->name}</b></span><br>";
        echo "Температура воздуха <b>{$res->current->temp_c}</b> градусов <br>";
        echo "Скорость ветра <b>{$res->current->vis_km}</b> km/h <br>";
        echo "Влажность воздуха <b>{$res->current->humidity}</b> % <br>";
        echo "</div>";

    }

    public function form( $instance ) {
        $title = ! empty( $instance['title'] ) ? $instance['title'] : esc_html__( 'Введите город', 'text_domain' );
        ?>
        <p>
            <label for="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>"><?php esc_attr_e( 'Название города:', 'text_domain' ); ?></label>
            <input class="widefat" id="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>" name="<?php echo esc_attr( $this->get_field_name( 'title' ) ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>">
        </p>
        <?php
    }

    public function update( $new_instance, $old_instance ) {
        $instance = array();
        $instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';

        return $instance;
    }

}
