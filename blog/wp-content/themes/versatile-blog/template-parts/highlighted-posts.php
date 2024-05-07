<?php
$feature_posts_id 					= get_theme_mod( 'highlighted_posts_category', '' );
$number_of_highlighted_posts_items  = get_theme_mod( 'number_of_highlighted_posts_items', 5 );
$highlighted_posts 					= get_theme_mod( 'highlighted_posts', true );

$query = new WP_Query( apply_filters( 'versatile_blog_highlighted_posts_args', array(
	'post_type'           => 'post',
	'post_status'         => 'publish',
	'posts_per_page'      => absint( $number_of_highlighted_posts_items ),
	'cat'                 => $feature_posts_id,
	'offset'              => 0,
	'ignore_sticky_posts' => 1
)));

$posts_array = $query->get_posts();

if( $highlighted_posts == true && is_home() ) {
	?>
	<section id="section-highlighted-posts">
		<div class="grid">
		<?php
			while ( $query->have_posts() ) : $query->the_post();
			$image 	= get_the_post_thumbnail_url( get_the_ID(), 'large' ); ?>

	            <article class="grid-item">
	            	<div class="highlighted-posts-image" style="background-image: url( <?php echo esc_url( $image ); ?> );">
		            	<div class="highlighted-posts-content">
				          	<?php if( 'post' == get_post_type() ): 
								$categories_list = get_the_category_list( ' ' );
								if( $categories_list ):
								printf( '<span class="cat-links">' . '%1$s' . '</span>', $categories_list ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
							endif; endif; ?>
							<h2 class="highlighted-posts-title">
								<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
							</h2>
				            <div class="entry-meta">
								<?php elastic_blog_posted_on() ?>
							</div>
			        	</div>
		        	</div>
	            </article>
		        
			<?php
			endwhile; 
			wp_reset_postdata();
		?>
		</div>
	</section>
<?php } ?>