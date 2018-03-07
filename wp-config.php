<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_site');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '`1~|FwZ5lJJ-OL~|e)EF<6c~r&3<INAt0mq5/}#[%/Jj$a^Pgo{{14EHo*TWk[4G');
define('SECURE_AUTH_KEY',  '7o8#,d<dw4{gKav* z*5XF_0AHVqYnXEuota>c`#%}LeEA:._dnHa!=v0<41;}M~');
define('LOGGED_IN_KEY',    ')L9 TLw[`$~&0q.v8AI$S@{4jAGdCIrk1=G_2YsepTYg^s6k=!U;pGReW3AS-}Fr');
define('NONCE_KEY',        ':f`IISO%<rM/V&m`S!#X3-jb+4>D# Rfai0^H#hWo&&Vu3^Sm~H6IKG]Fg&x#J?C');
define('AUTH_SALT',        ']?dPJ4WS#K;5>x=RNfB#Hw%LZV8L>)ZqsvxDTj&5tH S6S(]Uw@+UIG?@fm<xH$Y');
define('SECURE_AUTH_SALT', 'D>|XoYmS>61frq#`_*~Z,?0qVofg#B!#*7=8e^Iaex(S $g}{DegFtyBXmK1bTq}');
define('LOGGED_IN_SALT',   'I35S,Pwg#;{^Cb$:f:/@>o2a/^IN{E%bk1CJEl7_quR6(=VAc,Q?iy]ot_&P:6lu');
define('NONCE_SALT',       '=uTyXh2;YAkU!U_sk1B`@nE|@pyd&ituX$,;z*B$!z8-/!oWV?-tdjM)~l2ph3um');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
