<?php

class My_Widget extends WP_Widget 
{

	function __construct() 
	{
		parent::__construct(
			'my_widget', // Base ID
			esc_html__( 'Widget Title', 'text_domain' ), // Name
			array( 'description' => esc_html__( 'My Widget', 'text_domain' ), ) // Args
		);
	}


	public function widget( $args, $instance ) 
	{

			echo $args['before_widget'];
			if ( ! empty( $instance['title'] ) ) {
				echo $args['before_title'] . apply_filters( 'widget_title', $instance['title'] ) . $args['after_title'];
			}
		// echo esc_html__( 'Hello, Pakharenko', 'text_domain' );
			echo $args['after_widget'];
			echo'<form action="/filter/" method="post" name="s">

			<p><label>Сортировать посты:</label><br />
			<input type="radio" name="order" value="DESC"> по убыванию<br />
			<input type="radio" name="order" value="ASC"> по возрастанию </p>

			<p><input type="submit" name="submit" value="Получить посты"></p>

			</form>';
		}

		public function form( $instance ) 
		{
			$title = ! empty( $instance['title'] ) ? $instance['title'] : esc_html__( 'New title', 'text_domain' );
			?>
			<p>
				<label for="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>"><?php esc_attr_e( 'Title:', 'text_domain' ); ?></label> 
				<input class="widefat" id="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>" name="<?php echo esc_attr( $this->get_field_name( 'title' ) ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>">
			</p>
			<?php 
		}


		public function update( $new_instance, $old_instance ) 
		{
			$instance = array();
			$instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';

			return $instance;
		}

	} 