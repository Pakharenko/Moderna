<?php
/* Template Name: Portfolio */
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
            <div class="col-lg-12">

                <h4>Вы находитесь на странице: <?php wp_title();?></h4>

                <?php
                $portfolio_tags = new WP_Query( array('category_name' => 'Portfolio') );
                ?>

                </ul>
                <div class="clearfix">
                </div>
                <div class="row">
                    <section id="projects">
                        <ul id="thumbs" class="portfolio">


                            <?php if ($portfolio_tags->have_posts()) : ?>
                                <?php while ($portfolio_tags->have_posts()) : $portfolio_tags->the_post(); ?>
                                    <li class="item-thumbs col-lg-3 design" data-id="id-<?php the_ID(); ?>"
                                        data-type="<?php echo get_list_tags(); ?>">
                                        <a class="hover-wrap fancybox"  href="<?php the_permalink();?>">
                                            <span class="overlay-img"></span>
                                            <span class="overlay-img-thumb font-icon-plus"></span>
                                        </a>
                                        <?php the_post_thumbnail(); ?>
                                    </li>
                                <?php endwhile; ?>
                            <?php endif; ?>


                        </ul>
                    </section>
                </div>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>