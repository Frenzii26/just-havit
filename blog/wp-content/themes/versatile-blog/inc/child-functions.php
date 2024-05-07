<?php

if ( ! function_exists( 'versatile_blog_get_post_categories' ) ) {
	/**
	* Get post categories by by term id
	* 
	* @return array
	*/
	function versatile_blog_get_post_categories(){

		$terms = get_terms( array(
		    'taxonomy' => 'category',
		    'hide_empty' => true,
		) );

		if( empty($terms) || !is_array( $terms ) ){
			return array();
		}

		$data = array();
		foreach ( $terms as $key => $value) {
			$term_id = absint( $value->term_id );
			$data[$term_id] =  esc_html( $value->name );
		}
		return $data;

	}
}

if ( ! function_exists( 'elastic_blog_footer_section' ) ) :

  /**
   * Footer copyright
   *
   * @since 1.0.0
   */
  function elastic_blog_footer_section() { ?>
    <div class="site-info">    
        <?php 
            $copyright_footer = elastic_blog_get_option('copyright_text'); 
            if ( ! empty( $copyright_footer ) ) {
                $copyright_footer = wp_kses_data( $copyright_footer );
            }
            // Powered by content.
            $powered_by_text = sprintf( __( ' Theme Versatile Blog by %s', 'elastic-blog' ), '<a target="_blank" rel="designer" href="'. esc_url( 'http://creativthemes.com/' ) .'">Creativ Themes</a>' );
        ?>
        <div class="wrapper">
            <span class="copy-right"><?php echo esc_html($copyright_footer);?><?php echo $powered_by_text;?></span>
        </div><!-- .wrapper --> 
    </div> <!-- .site-info -->
    
  <?php }

endif;
add_action( 'elastic_blog_action_footer', 'elastic_blog_footer_section', 20 );