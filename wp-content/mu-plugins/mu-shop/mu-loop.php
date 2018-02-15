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




add_action('register_form','register_form_fields');
function register_form_fields(){
    //Output your HTML
    ?>
    <p>
        <label for="my_extra_field">Skype<br>
            <input type="text" tabindex="20" size="20" value="" class="input" id="skype" name="skype"></label>
    </p>
    <?php
}


add_filter( 'registration_errors', 'crf_registration_errors', 10, 3 );
function crf_registration_errors( $errors, $sanitized_user_login, $user_email ) {

    if ( empty( $_POST['skype'] ) ) {
        $errors->add( 'skype_error', __( '<strong>ERROR</strong>: Please enter your Skype.', 'mu-shop' ) );
    }

    return $errors;
}

add_action( 'user_register', 'crf_user_register' );
function crf_user_register( $user_id ) {
    if ( ! empty( $_POST['skype'] ) ) {
        update_user_meta( $user_id, 'skype', $_POST['skype'] );
    }
}


/**
 * Back end registration
 */

add_action( 'user_new_form', 'crf_admin_registration_form' );
function crf_admin_registration_form( $operation ) {
    if ( 'add-new-user' !== $operation ) {
        // $operation may also be 'add-existing-user'
        return;
    }

    $skype = ! empty( $_POST['skype'] ) ?  $_POST['skype'] : '';

    ?>
    <h3><?php esc_html_e( 'Contact Information', 'mu-shoop' ); ?></h3>

    <table class="form-table">
        <tr>
            <th><label for="skype"><?php esc_html_e( 'Skype', 'mu-shoop' ); ?></label> <span class="description"><?php esc_html_e( '(required)', 'mu-shoop' ); ?></span></th>
            <td>
                <input type="text" tabindex="20" size="20" value="" class="regular-text" id="skype" name="skype">
            </td>
        </tr>
    </table>
    <?php
}

add_action( 'user_profile_update_errors', 'crf_user_profile_update_errors', 10, 3 );
function crf_user_profile_update_errors( $errors, $update, $user ) {
    if ( $update ) {
        return;
    }

    if ( empty( $_POST['skype'] ) ) {
        $errors->add( 'skype_error', __( '<strong>ERROR</strong>: Please enter your Skype.', 'mu-shop' ) );
    }
}

add_action( 'edit_user_created_user', 'crf_user_register' );


add_action( 'show_user_profile', 'crf_show_extra_profile_fields' );
add_action( 'edit_user_profile', 'crf_show_extra_profile_fields' );

function crf_show_extra_profile_fields( $user ) {
    ?>
    <h3><?php esc_html_e( 'Contact Information', 'crf' ); ?></h3>

    <table class="form-table">
        <tr>
            <th><label for="skype"><?php esc_html_e( 'Skype', 'crf' ); ?></label></th>
            <td><?php echo esc_html( get_the_author_meta( 'skype', $user->ID ) ); ?></td>
        </tr>
    </table>
    <?php
}

