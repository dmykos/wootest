<?php
/**
 * Plugin Name:       Mu Shop
 * Description:       Must Use Shop plugin
 * Version:           1.0.0
 * Text Domain:       mu-shop
 */


require_once __DIR__ . '/../vendor/autoload.php';

require_once ("includes/Kama_Post_Meta_Box.php");

function wootest_init(){
    new \shop\Init();
}
wootest_init();


// Show selected movies after login
add_filter( 'login_redirect', function( $url, $query, $user ) {
    return get_term_link( 'best', 'movie_category' );
}, 10, 3 );

