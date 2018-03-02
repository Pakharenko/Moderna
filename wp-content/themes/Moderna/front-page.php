<?php
/* Template Name: Home */
  get_header();
?>


  <section id="featured">
  	<!-- start slider -->
  	<div class="container">
  		<div class="row">
  			<div class="col-lg-12">
  				<!-- Slider -->
  				<div id="main-slider" class="flexslider">
  					<ul class="slides">

  						<?php $slider = new WP_Query( array('post_type' => 'Slider', 'order' => 'ASC') ); ?>

  						<?php if ($slider->have_posts()) :  while ($slider->have_posts()) : $slider->the_post(); ?>

  							<li>
  								<?php the_post_thumbnail();?>
  								<div class="flex-caption">
  									<h3><?php the_title();?></h3>
  									<?php the_excerpt();?>
  									<a href="" class="btn btn-theme">Learn More</a>
  								</div>
  							</li>

  						<?php endwhile; ?>
  					<?php else: ?>
  						<p>Разместите фото для слайдера!</p>
  					<?php endif; ?>

  				</ul>
  			</div>
  			<!-- end slider -->
  		</div>
  	</div>
  </div>



</section>
<section class="callaction">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="big-cta">
					<div class="cta-text">
						<h2><?php echo get_option('my_text');?></h2>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="row">



					<?php 
					$about = new WP_Query( array ('category_name' => 'about', 'posts_per_page' => 4) ); 
					?>

					<?php if ($about->have_posts()) : ?>
						<?php while ( $about->have_posts() ) : $about->the_post(); ?>
							<div class="col-lg-3">
								<div class="box">

									<div class="box-gray aligncenter">
										<h4><?php the_title(); ?></h4>
										<div class="icon">
											<?php the_excerpt();?>
										</div>
											<?php the_content(); ?>
									</div>
									<div class="box-bottom">
										<a href="<?php the_permalink(); ?>">Learn more</a>
									</div>
								</div>
							</div>

						<?php endwhile; ?>
					<?php endif ; ?>

				</div>
			</div>
		</div>
		<!-- divider -->
		<div class="row">
			<div class="col-lg-12">
				<div class="solidline">
				</div>
			</div>
		</div>
		<!-- end divider -->
		<!-- Portfolio Projects -->
		<div class="row">
			<div class="col-lg-12">
				<h4 class="heading">Recent Works</h4>
				<div class="row">
					<section id="projects">
						<ul id="thumbs" class="portfolio">

							<?php 
							$portfolio = new WP_Query( array ('category_name' => 'Portfolio', 'posts_per_page' => 4, 'order' => 'DESC') ); 
							?>

							<?php if ($portfolio->have_posts()) : ?>
								<?php while ( $portfolio->have_posts() ) : $portfolio->the_post(); ?>


									<li class="col-lg-3 design">
										<div class="item-thumbs">
											<a class="hover-wrap" title="<?php the_title();?>" href="<?php the_permalink();?>">
												<span class="overlay-img"></span>
												<span class="overlay-img-thumb font-icon-plus"><?php echo get_list_tags();?></span>
											</a>
											<?php the_post_thumbnail();?>
										</div>
									</li>

								<?php endwhile; ?>
							<?php endif ; ?>

						</ul>
					</section>
				</div>
			</div>
		</div>

	</div>
</section>

<?php get_footer(); ?>