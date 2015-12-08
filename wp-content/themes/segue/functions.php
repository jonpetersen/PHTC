<?php
//* Start the engine
include_once( get_template_directory() . '/lib/init.php' );

//* Child theme (do not remove)
define( 'CHILD_THEME_NAME', 'Segue' );
define( 'CHILD_THEME_URL', 'http://ryantownley.com/' );
define( 'CHILD_THEME_VERSION', '1.0' );

// Register responsive menu script
add_action( 'wp_enqueue_scripts', 'segue_enqueue_scripts' );
/**
 * Enqueue responsive javascript
 * @author Ozzy Rodriguez
 */
function segue_enqueue_scripts() {
	wp_enqueue_script( 'segue-responsive-menu', get_stylesheet_directory_uri() . '/lib/js/responsive-menu.js', array( 'jquery' ), '1.0.0', true );
}

//* Enqueue Open Sans & Droid Serif Google fonts
add_action( 'wp_enqueue_scripts', 'segue_google_fonts' );
function segue_google_fonts() {
	wp_enqueue_style( 'google-font-open-sans', '//fonts.googleapis.com/css?family=Open+Sans:400,600,300,300italic,400italic,600italic,700,700italic,800,800italic', array(), CHILD_THEME_VERSION );
	wp_enqueue_style( 'google-font-droid-serif', '//http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic', array(), CHILD_THEME_VERSION );
}

//* Remove Genesis child theme style sheet
remove_action( 'genesis_meta', 'genesis_load_stylesheet' );
 
//* Enqueue Genesis child theme style sheet at higher priority
add_action( 'wp_enqueue_scripts', 'genesis_enqueue_main_stylesheet', 15 );

//* Add HTML5 markup structure
add_theme_support( 'html5' );

//* Add viewport meta tag for mobile browsers
add_theme_support( 'genesis-responsive-viewport' );

//* Add support for custom background
add_theme_support( 'custom-background' );

//* Add support for 3-column footer widgets
add_theme_support( 'genesis-footer-widgets', 3 );

//* Enable shortcodes in widgets
add_filter('widget_text', 'do_shortcode');

//* Add Genesis Connect for WooCommerce Support
add_theme_support( 'genesis-connect-woocommerce' );

//* Add the awesome support.
add_action( 'wp_enqueue_scripts', 'genesis_add_the_awesome' );
function genesis_add_the_awesome() {

//* Register the awesomeness.
wp_register_style( 'font-awesome', '//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css', null, '4.3.0' );
do_action( 'genesis_add_the_awesome' );
}

//* Load the awesomeness.
add_action( 'genesis_add_the_awesome' , 'genesis_load_the_awesome' );
function genesis_load_the_awesome() {
wp_enqueue_style( 'font-awesome' );
}

//* Display author box on single posts
add_filter( 'get_the_author_genesis_author_box_single', '__return_true' );

//* Add new featured image size
add_image_size( 'featured-single', 1140, 500, TRUE );

//* Add featured image above content on single posts & pages
add_action( 'genesis_before_content_sidebar_wrap', 'single_post_featured_image', 5 );

function single_post_featured_image() {

	if ( ! is_singular() )
		return;
	
	$img = genesis_get_image( array( 'format' => 'html', 'size' => genesis_get_option( 'image_size' ), 'attr' => array( 'class' => 'post-image' ) ) );
	printf( '<a href="%s" title="%s">%s</a>', get_permalink(), the_title_attribute( 'echo=0' ), $img );
}

//* Move featured image above entry titles
add_action ('genesis_before_entry', 'sk_remove_post_image');
function sk_remove_post_image() {
 
	remove_action( 'genesis_entry_content', 'genesis_do_post_image', 8 );
	genesis_do_post_image();
 
}

//* Remove featured image alignment from archive pages
add_filter( 'genesis_attr_entry-image', 'be_remove_image_alignment' );
 
function be_remove_image_alignment( $attributes ) {
 
  $attributes['class'] = str_replace( 'alignleft', 'alignnone', $attributes['class'] );
 
	return $attributes;
}