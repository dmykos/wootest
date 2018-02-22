<?php


namespace shop;


class Metaboxes {
    public function __construct() {
        $this->moviePostTypeMetaBoxes();
    }

    public function moviePostTypeMetaBoxes(){
        new \Kama_Post_Meta_Box(
            array(
                'id'         => 'movie',
                'title'      => 'Movie settings',
                'post_type'  => array('movie'),
                'fields'     => array(
                    'subtitle' => array( 'title' => 'Movie Subtitle' ),
                    'price' => array( 'title' => 'Price' ),
                ),
            )
        );
    }
}