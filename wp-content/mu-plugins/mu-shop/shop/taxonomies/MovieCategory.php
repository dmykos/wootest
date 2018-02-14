<?php

namespace shop\taxonomies;



use shop\postTypes\Movie;

class MovieCategory extends BaseTaxonomy
{
    const TAXONOMY_NAME = 'movie_category';
    public static function initTaxonomy(){
        
        $labels         = array(
            'name'          => _x('Movie Categories', 'Movie Categories', 'mu-loop'),
            'singular_name' => _x('Movie Category', 'Movie Category', 'mu-loop'),
            'search_items'  => __('Search Movie Categories', 'mu-loop'),
            'all_items'     => __('All Movie Categories', 'mu-loop'),
            'edit_item'     => __('Edit Movie Category', 'mu-loop'),
            'update_item'   => __('Update Movie Category', 'mu-loop'),
            'add_new_item'  => __('Add New Movie Category', 'mu-loop'),
            'new_item_name' => __('New Movie Category Name', 'mu-loop'),
            'not_found'     => __('No genres found', 'mu-loop'),
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
