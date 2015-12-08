<?php
/*
Plugin Name: Login Logout Switcher
Plugin URI: http://www.trottyzone.com/login-logout-switcher
Description: Simple widget that displays both Register and Login links then once logged in links switches to Logout link with a friendly welcome and username.
Version: 2.2
Author: Ephrain Marchan 
Author URI: http://www.trottyzone.com
License: GPL2 or later
*/


/*

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

*/


/**
 * Authors Widget Class
 */
class login_logout_switcher extends WP_Widget {

  /** constructor */
    function login_logout_switcher() {
   
        parent::WP_Widget(false,  $name = 'Login Logout Switcher', $widget_options = array('classname' => 'Login Logout Switcher', 'description' => 'Displays "Log In | Log Out" links then switches to Display "Username | Log Out" links.'));	
    
}
    /** @see WP_Widget::widget */
    function widget($args, $instance) {	
        extract( $args );
		global $wpdb;
		
      $title = apply_filters('widget_title', $instance['title']);
	$ll_linkfield = $instance['ll_linkfield'];
        $bg_color_ll = $instance['bg_color_ll'];
        $tx_color_ll = $instance['tx_color_ll'];
          $tx_a_color = $instance['tx_a_color'];
            add_option( 'll_a_option', $tx_a_color );


// widget front-end look

        ?>
              <?php echo $before_widget; ?>
                  <?php if ( $title )
                        echo $before_title . $title . $after_title; ?>
                                 

							<div id="ll_div" align="center" style="color:<?php echo $tx_color_ll; ?>;background-color:<?php echo $bg_color_ll ?>;"><ul>


						
<?php if(is_user_logged_in()): ?>
<?php global $current_user; wp_get_current_user();  ?>
Welcome back: <a href="<?php if (empty ($POST['ll_linkfield'])) echo ''.bloginfo('url').'/wp-admin/profile.php'; else echo $ll_linkfield; ?>"><?= $current_user->display_name ?></a> | <a href="<?php echo wp_logout_url( get_permalink() ); ?>" title="Logout">Logout</a>

       <?php endif ?>
	
<?php if(!is_user_logged_in()): ?>
<a href="<?php bloginfo('wpurl'); ?>/wp-login.php?action=register" title="Register">Register</a> | <a href="<?php bloginfo('wpurl'); ?>/wp-login.php" title="LogIn">Login</a>
       <?php endif ?>
												
							
							</ul></div>
              <?php echo $after_widget; ?>
        <?php
    }

    /** @see WP_Widget::update */
    function update($new_instance, $old_instance) {		
		$instance = $old_instance;
		$instance['title'] = $new_instance['title'];
                $instance['ll_linkfield'] = $new_instance['ll_linkfield'];
                 $instance['bg_color_ll'] = $new_instance['bg_color_ll']; 
                  $instance['tx_color_ll'] = $new_instance['tx_color_ll'];
                   $instance['tx_a_color'] = $new_instance['tx_a_color'];
        return $instance;
    }


    /** @see WP_Widget::form */
    function form($instance) {	

      $title = esc_attr($instance['title']);
      $ll_linkfield = strip_tags($instance['ll_linkfield']);
      $bg_color_ll = esc_attr($instance['bg_color_ll']);
      $tx_color_ll = esc_attr($instance['tx_color_ll']);
         $tx_a_color = esc_attr($instance['tx_a_color']);
		
        ?>
         <p>
          <label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Widget Title:'); ?></label> 
          <input class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo $title; ?>" />
        </p>

<p>
          <label for="<?php echo $this->get_field_id('ll_linkfield'); ?>"><?php _e('Name Link: '); ?></label> 
          <input class="widefat" id="<?php echo $this->get_field_id('ll_linkfield'); ?>" name="<?php echo $this->get_field_name('ll_linkfield'); ?>" type="text" value="<?php echo $ll_linkfield; ?>" />
        </p>

<p>
          <label for="<?php echo $this->get_field_id('bg_color_ll'); ?>"><?php _e('Background Color: '); ?></label> 
          <input maxlength="7" size="6" id="<?php echo $this->get_field_id('bg_color_ll'); ?>" name="<?php echo $this->get_field_name('bg_color_ll'); ?>" type="text" value="<?php echo $bg_color_ll; ?>" />
        </p>

<p>
          <label for="<?php echo $this->get_field_id('tx_color_ll'); ?>"><?php _e('Text Color: '); ?></label> 
          <input maxlength="7" size="6" id="<?php echo $this->get_field_id('tx_color_ll'); ?>" name="<?php echo $this->get_field_name('tx_color_ll'); ?>" type="text" value="<?php echo $tx_color_ll; ?>" />
        </p>

<p>
          <label for="<?php echo $this->get_field_id('tx_a_color'); ?>"><?php _e('Links Color: '); ?></label> 
          <input maxlength="7" size="6" id="<?php echo $this->get_field_id('tx_a_color'); ?>" name="<?php echo $this->get_field_name('tx_a_color'); ?>" type="text" value="<?php echo $tx_a_color; ?>" />
        </p>

<div style="font-weight:700;color:red;">
PLEASE <a href="http://www.trottyzone.com/donate/">DONATE </a><3
</div>
        <?php 

    }


} 
// register widget
add_action('widgets_init', create_function('', 'return register_widget("login_logout_switcher");'));
add_action('wp_head', 'll_style_sheet');
function ll_style_sheet(){
echo '<style type="text/css">
#ll_div a {
color: '.get_option('ll_a_option').';
}


</style>';
}