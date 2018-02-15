<?php


namespace shop;


class WooCommerce {
    public function __construct() {
        // add_action('init', array( $this, 'initAction' ));
        add_filter('woocommerce_add_to_cart_redirect', array( $this, 'addToCartRedirect' ));

        //Add New Pay Button Text
        add_filter('woocommerce_product_single_add_to_cart_text', array( $this, 'cartButtonText' ));
        add_filter('woocommerce_product_add_to_cart_text', array( $this, 'cartButtonText' ));
    }

    public function addToCartRedirect() {
        global $woocommerce;
        $checkout_url = wc_get_checkout_url();
        return $checkout_url;
    }

    public function cartButtonText() {
        return __( 'Pay Now', 'woocommerce' );
    }


}