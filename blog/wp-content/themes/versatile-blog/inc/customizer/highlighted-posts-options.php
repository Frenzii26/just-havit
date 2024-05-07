<?php

// Highlighted Posts Section
$wp_customize->add_section('highlighted_posts_section', array(    
	'title'       => __('Highlighted Posts Section', 'versatile-blog'),
	'panel'       => 'theme_option_panel'    
));

// Enable / Disable
$wp_customize->add_setting('highlighted_posts', 
	array(
		'default' 			=> true,
		'type'              => 'theme_mod',
		'capability'        => 'edit_theme_options',
		'sanitize_callback' => 'elastic_blog_sanitize_checkbox',
		'transport'         => 'refresh',
	)
);

$wp_customize->add_control('highlighted_posts', 
	array(		
		'label' 	=> __('Enable Highlighted Posts', 'versatile-blog'),
		'section' 	=> 'highlighted_posts_section',
		'settings'  => 'highlighted_posts',
		'type' 		=> 'checkbox',
	)
);

// Number of items
$wp_customize->add_setting('number_of_highlighted_posts_items', 
	array(
	'default' 			=> 5,
	'type'              => 'theme_mod',
	'capability'        => 'edit_theme_options',	
	'sanitize_callback' => 'elastic_blog_sanitize_number_range'
	)
);

$wp_customize->add_control('number_of_highlighted_posts_items', 
	array(
	'label'       => __('Number of Items (Max: 15)', 'versatile-blog'),
	'section'     => 'highlighted_posts_section',   
	'settings'    => 'number_of_highlighted_posts_items',		
	'type'        => 'number',
	'input_attrs' => array(
			'min'	=> 1,
			'max'	=> 15,
			'step'	=> 1,
		),
	)
);

// Category Dropdown
$wp_customize->add_setting('highlighted_posts_category', 
	array(
		'default' 			=> '',
		'type'              => 'theme_mod',
		'capability'        => 'edit_theme_options',
		'sanitize_callback' => 'elastic_blog_sanitize_select',
		'transport'         => 'refresh',
	)
);

$wp_customize->add_control('highlighted_posts_category', 
	array(		
		'label' 	=> __('Select Categories', 'versatile-blog'),
		'section' 	=> 'highlighted_posts_section',
		'settings'  => 'highlighted_posts_category',
		'type' 		=> 'select',
		'choices' 	=> versatile_blog_get_post_categories(),
	)
);