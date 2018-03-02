<?php
/*
Template Name: Filter
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
			<div class="col-lg-8">

				<h4>Вы находитесь на странице: <?php wp_title();?></h4>

<?php $radio = $_POST['order'];?>

<?php if($_POST['order'] == $radio) : ?>


				<?php
				$posts = new WP_Query(  array ('category_name' => 'Blog', 'order' => $radio));
				?>

				<?php if ($posts->have_posts()) : ?>
					<?php while ( $posts->have_posts() ) : $posts->the_post(); ?>

						<article>

							<div class="post-image">
								<div class="post-heading">
									<h3><a href="<?php the_permalink(); ?>"><?php the_title();?></a></h3>
								</div>
								<?php the_post_thumbnail(); ?>
							</div>
							<p>
								<?php the_excerpt(); ?>
							</p>
							<div class="bottom-article">
								<ul class="meta-post">
									<li><i class="icon-calendar"></i><a href="#"> <?php the_date(); ?></a></li>
									<li><i class="icon-user"></i><a href="#"> <?php the_author(); ?></a></li>
									<li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
									<li><i class="icon-comments"></i><a href="#">4 Comments</a></li>
								</ul>
								<a href="<?php the_permalink(); ?>" class="pull-right">Continue reading <i class="icon-angle-right"></i></a>
							</div>

						</article>

					<?php endwhile; ?>
				<?php endif ; ?>

<?php endif;?>


			</div>

			<div class="col-lg-4">

				<?php get_sidebar(); ?>

			</div>
		</div>
	</div>
</section>

<?php get_footer(); ?>
