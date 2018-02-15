<?php

namespace shop\taxonomies;



use shop\postTypes\Movie;

class MovieCategory extends BaseTaxonomy
{
    const TAXONOMY_NAME = 'movie_category';
    public static function initTaxonomy(){
        
        $labels         = array(
            'name'          => _x('Movie Categories', 'Movie Categories', 'mu-shop'),
            'singular_name' => _x('Movie Category', 'Movie Category', 'mu-shop'),
            'search_items'  => __('Search Movie Categories', 'mu-shop'),
            'all_items'     => __('All Movie Categories', 'mu-shop'),
            'edit_item'     => __('Edit Movie Category', 'mu-shop'),
            'update_item'   => __('Update Movie Category', 'mu-shop'),
            'add_new_item'  => __('Add New Movie Category', 'mu-shop'),
            'new_item_name' => __('New Movie Category Name', 'mu-shop'),
            'not_found'     => __('No genres found', 'mu-shop'),
        );

        $args = array(
            'hierarchical'      => true,
            'labels'            => $labels,
            'show_ui'           => true,
            'show_in_rest'      => true,
            'show_admin_column' => true,
            'query_var'         => true,
            'rewrite'           => true,
        );

        register_taxonomy(
            self::TAXONOMY_NAME,
            [Movie::POST_TYPE_NAME],
            $args
        );
    }
}
