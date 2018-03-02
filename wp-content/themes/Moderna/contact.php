<?php
/*
Template Name: Contact
*/
?>

<?php get_header(); ?>


		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
							<li class="active"><?php the_breadcrumb() ?></li>
						</ul>
					</div>
				</div>
			</div>
		</section>


<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-md-8">

				<h4>Вы находитесь на странице: <?php wp_title();?></h4>

				<div class="block-contact">
					<?php
					if ( have_posts() ){
						while ( have_posts() ){ the_post();
							echo the_content();
						}
					} else {
						echo wpautop( 'Постов для вывода не найдено.' );
					}
					?>

				</div>
			</div>
			<div class="col-md-4">
				<?php get_sidebar(); ?>
			</div>

		</div>
	</div>

</section>

<?php get_footer(); ?>