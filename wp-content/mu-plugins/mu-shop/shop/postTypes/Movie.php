<?php

namespace shop\postTypes;

use shop\taxonomies\MovieCategory;

class Movie extends BasePostType
{
    const POST_TYPE_NAME        = 'movie';

    public static function initPostType()
    {
        $labels = array(
            'name'               => __('Movies', 'mu-shop'),
            'singular_name'      => __('Movie', 'mu-shop'),
            'add_new'            => _x('Add New', 'Movie', 'mu-shop'),
            'add_new_item'       => __('Add New Movie', 'mu-shop'),
            'edit_item'          => __('Edit Movie', 'mu-shop'),
            'new_item'           => __('New Movie', 'mu-shop'),
            'view_item'          => __('View Movie', 'mu-shop'),
            'view_items'         => __('View Movie', 'mu-shop'),
            'search_items'       => __('Search Movie', 'mu-shop'),
            'not_found'          => __('No Movies found', 'mu-shop'),
            'not_found_in_trash' => __('No Movies found in Trash', 'mu-shop'),

        );

        $args = array(
            'labels'          => $labels,
            'public'          => true,
            'show_ui'         => true,
            'show_in_menu'    => true,
            'show_in_rest'    => true,
            'query_var'       => true,
            'rewrite'         => true,
            //'capability_type' => array(self::POST_TYPE_NAME, self::POST_TYPE_PLURAL_NAME),
            //'map_meta_cap'    => false,
            'has_archive'     => true,
            'menu_position'   => 26,
            'menu_icon'       => 'dashicons-media-document',
            'supports'        => array('title', 'editor', 'revisions', 'thumbnail'),
            'taxonomies'      => array(MovieCategory::TAXONOMY_NAME),
        );


        register_post_type(self::POST_TYPE_NAME, $args);
    }

}
