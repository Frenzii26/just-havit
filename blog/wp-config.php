<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'u493715205_N05dh' );

/** Database username */
define( 'DB_USER', 'u493715205_T6aLV' );

/** Database password */
define( 'DB_PASSWORD', '7xSH59brcL' );

/** Database hostname */
define( 'DB_HOST', '127.0.0.1' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'nr9B&]pb6iu=W>+qYHlnUEGa[,w.W@-9[j36NXnSK]f{7ZdZ%X*q!=CL!7m?t(5C' );
define( 'SECURE_AUTH_KEY',   '0_v)SkvyV!VJ]5k&=<Xlm~bya~n-WyPHF&{UlZU{:`Zag|gCaArZ.Z(3jgQ`qZ0S' );
define( 'LOGGED_IN_KEY',     'jY4>(o8wdQ=PC@f!iya@D]&&-dDc=55 qb/V<5OGPf]7|.=d~lrZg% z6yLYzNp{' );
define( 'NONCE_KEY',         '$nIpsAmB,R9,j-?3q5MB3nW2N,91tq2!9-Q4}G=6E8m20q34dtZ.c?5m}z<A:nJp' );
define( 'AUTH_SALT',         'h>t! &7(M( ~f1>SBV>ZBT+FIs*g 4.rsc?t2ew&-+mK_1l$,UMX`(p)V=j;Pbj>' );
define( 'SECURE_AUTH_SALT',  'b#+6|G,D!yRNIy]jJCG!<@yi5pZG?fk]2@D4Uw$U33PO|;3X$ov#OLYrt8HeNQQq' );
define( 'LOGGED_IN_SALT',    'nhxRpk4]}akvfaL;MjfJ./Ty?;lVQg4 <p[$njw{[3Y[z;Dn@,J-gS3YN/jt_nGh' );
define( 'NONCE_SALT',        'qU>L=9p$#*(x4N lI4k[S[ZuzAL2)e8v4GL:y,2%:hFyV9,whSAcjDQV}cL~#qmA' );
define( 'WP_CACHE_KEY_SALT', '2TIztr%NuiE[Bf)S{#pr@/on^1:f~~XxPP:vtE+d[_`CyRu> ~q43( tCc!CB_)f' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );


/* Add any custom values between this line and the "stop editing" line. */



define( 'FS_METHOD', 'direct' );
define( 'WP_AUTO_UPDATE_CORE', 'minor' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
