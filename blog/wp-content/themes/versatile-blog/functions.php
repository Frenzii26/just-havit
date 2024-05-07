<?php
/**
* Theme functions and definitions
*
*/

if ( ! function_exists( 'versatile_blog_enqueue_styles' ) ) :

	function versatile_blog_enqueue_styles() {

		wp_enqueue_style( 'versatile-blog-style-parent', get_template_directory_uri() . '/style.css' );

		wp_enqueue_style( 'versatile-blog-style', get_stylesheet_directory_uri() . '/style.css', array( 'versatile-blog-style-parent' ), '1.0' );

		wp_enqueue_style( 'versatile-blog-fonts', versatile_blog_fonts_url(), array(), null );
	}
endif;
add_action( 'wp_enqueue_scripts', 'versatile_blog_enqueue_styles', 99 );


require get_stylesheet_directory() . '/inc/customizer.php';

require get_stylesheet_directory() . '/inc/child-functions.php';


if ( ! function_exists( 'versatile_blog_fonts_url' ) ) :

	function versatile_blog_fonts_url() {
		
		$fonts_url = '';
		$fonts     = array();
		$subsets   = 'latin,latin-ext';


		if ( 'off' !== _x( 'on', 'Josefin Sans: on or off', 'versatile-blog' ) ) {
			$fonts[] = 'Josefin Sans:400,500,600,700';
		}

		if ( 'off' !== _x( 'on', 'Lora font: on or off', 'versatile-blog' ) ) {
			$fonts[] = 'Lora:400';
		}

		$query_args = array(
			'family' => urlencode( implode( '|', $fonts ) ),
			'subset' => urlencode( $subsets ),
		);

		if ( $fonts ) {
			$fonts_url = add_query_arg( $query_args, 'https://fonts.googleapis.com/css' );
		}

		return esc_url_raw( $fonts_url );
	}
endif;