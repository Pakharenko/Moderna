<!DOCTYPE html>
<html <?php language_attributes(); ?> >

<head>

	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<title><?php echo get_bloginfo('name');?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />

	<?php wp_head(); ?>
</head>

<body>
	<div id="wrapper">
		<!-- start header -->
		<header>
			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="<?php echo home_url(); ?>"><span><?php echo get_bloginfo('name');?></a>
						</div>
						<div class="navbar-collapse collapse ">

							<?php 
							wp_nav_menu( array(
							'menu_class'=>'nav navbar-nav',
							'theme_location'=>'top',
							'container' => false, 
							) );
							?>
							
						</div>
					</div>
				</div>
			</header>
<!-- end header -->