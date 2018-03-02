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
			<div class="col-lg-8">

				<article>

					<?php if (have_posts()) :  while (have_posts()) : the_post(); ?>

						<h3><?php the_title();?></h3>
						<?php the_post_thumbnail();?>

						<a href="<?php the_permalink();?>" class="btn btn-theme">Learn More</a>

					<?php endwhile; ?>
				<?php endif; ?>


			</article>

		</div>

		<div class="col-lg-4">

			<?php get_sidebar(); ?>

		</div>
	</div>
</div>
</section>

<?php get_footer(); ?>