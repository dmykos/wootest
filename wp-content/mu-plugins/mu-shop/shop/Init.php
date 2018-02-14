<?php

namespace shop;


use \shop\postTypes\BasePostType;

class Init {
    public function __construct() {
        add_action('init', array( $this, 'initAction' ));
    }
    public function initAction() {
        // Init post types
        /** @var postTypes\BasePostType $postType */
        foreach ( Settings::postTypes() as $postType ) {
            $postType::initPostType();
        }
    }
}