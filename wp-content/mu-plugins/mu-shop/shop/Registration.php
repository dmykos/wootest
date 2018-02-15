<?php


namespace shop;


class Registration {
    public function __construct() {
       // add_action('init', array( $this, 'initAction' ));
        add_action('register_form', array( $this, 'registerFormFields' ));

        add_filter( 'registration_errors', array( $this, 'registrationErrors' ), 10, 3 );

        add_action( 'user_register', array( $this, 'userRegister' ) );

        /**
         * Back end registration
         */
        add_action( 'user_new_form', array( $this, 'adminRegistrationForm' ) );

        add_action( 'user_profile_update_errors', array( $this, 'userProfileUpdateErrors' ), 10, 3 );

        add_action( 'edit_user_created_user', array( $this, 'userRegister' ) );


        /**
         * show user profile
         */
        add_action( 'show_user_profile', array( $this, 'showExtraProfileFields' ) );
        add_action( 'edit_user_profile', array( $this, 'showExtraProfileFields' ) );
    }


    public function registerFormFields(){
        //Output your HTML
        ?>
        <p>
            <label for="my_extra_field">Skype<br>
                <input type="text" tabindex="20" size="20" value="" class="input" id="skype" name="skype"></label>
        </p>
        <?php
    }



    public function registrationErrors( $errors, $sanitized_user_login, $user_email ) {

        if ( empty( $_POST['skype'] ) ) {
            $errors->add( 'skype_error', __( '<strong>ERROR</strong>: Please enter your Skype.', 'mu-shop' ) );
        }

        return $errors;
    }


    public function userRegister( $user_id ) {
        if ( ! empty( $_POST['skype'] ) ) {
            update_user_meta( $user_id, 'skype', $_POST['skype'] );
        }
    }



    public function adminRegistrationForm( $operation ) {
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


    public function userProfileUpdateErrors( $errors, $update, $user ) {
        if ( $update ) {
            return;
        }

        if ( empty( $_POST['skype'] ) ) {
            $errors->add( 'skype_error', __( '<strong>ERROR</strong>: Please enter your Skype.', 'mu-shop' ) );
        }
    }



    public function showExtraProfileFields( $user ) {
        ?>
        <h3><?php esc_html_e( 'Contact Information', 'mu-shoop' ); ?></h3>

        <table class="form-table">
            <tr>
                <th><label for="skype"><?php esc_html_e( 'Skype', 'mu-shoop' ); ?></label></th>
                <td><?php echo esc_html( get_the_author_meta( 'skype', $user->ID ) ); ?></td>
            </tr>
        </table>
        <?php
    }
}