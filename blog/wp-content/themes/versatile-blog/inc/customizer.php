<?php
/**
 * Versatile Blog Theme Customizer
 *
 * @package versatile_blog
 */

/**
 * Customizer options
 */
function versatile_blog_customize_register( $wp_customize ) {
	include get_stylesheet_directory() . '/inc/customizer/highlighted-posts-options.php';
}
add_action( 'customize_register', 'versatile_blog_customize_register' );