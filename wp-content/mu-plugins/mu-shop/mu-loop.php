<?php
/**
 * Plugin Name:       Mu Shop
 * Description:       Must Use Shop plugin
 * Version:           1.0.0
 * Text Domain:       mu-shop
 */


require_once __DIR__ . '/../vendor/autoload.php';

function wootest_init(){
    new \shop\Init();
}
wootest_init();