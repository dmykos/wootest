<?php

namespace shop\postTypes;

class Movie extends BasePostType
{
    const POST_TYPE_NAME        = 'movie';

    public static function initPostType()
    {
        $labels = array(
            'name'               => __('Movies', 'mu-loop'),
            'singular_name'      => __('Movie', 'mu-loop'),
            'add_new'            => _x('Add New', 'Movie', 'mu-loop'),
            'add_new_item'       => __('Add New Movie', 'mu-loop'),
            'edit_item'          => __('Edit Movie', 'mu-loop'),
            'new_item'           => __('New Movie', 'mu-loop'),
            'view_item'          => __('View Movie', 'mu-loop'),
            'view_items'         => __('View Movie', 'mu-loop'),
            'search_items'       => __('Search Movie', 'mu-loop'),
            'not_found'          => __('No Movies found', 'mu-loop'),
            'not_found_in_trash' => __('No Movies found in Trash', 'mu-loop'),

        );

        $args = array(
            'labels'          => $labels,
            'public'          => false,
            'show_ui'         => true,
            'show_in_menu'    => true,
            'show_in_rest'    => false,
            'query_var'       => false,
            'menu_position'   => 26,
            'menu_icon'       => 'dashicons-star-filled',
            'supports'        => array('title'),
        );

        register_post_type(self::POST_TYPE_NAME, $args);
    }

}
