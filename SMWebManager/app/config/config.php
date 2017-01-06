<?php
/*
 * Modified: prepend directory path of current file, because of this file own different ENV under between Apache and command line.
 * NOTE: please remove this comment.
 */
defined('BASE_PATH') || define('BASE_PATH', getenv('BASE_PATH') ?: realpath(dirname(__FILE__) . '/../..'));
defined('APP_PATH') || define('APP_PATH', BASE_PATH . '/app');

return new \Phalcon\Config(array(
    'version' => '1.0',

    'database' => array(
        'adapter'  => 'Mysql',
        'host'     => 'localhost',
        'username' => 'dtsd',
        'password' => 'password',
        'dbname'   => 'dtsddb',
        'charset'  => 'utf8',
    ),

    'application' => array(
        'appDir'         => APP_PATH . '/',
        'modelsDir'      => APP_PATH . '/common/models/',
        'migrationsDir'  => APP_PATH . '/migrations/',
        'cacheDir'       => BASE_PATH . '/cache/',
        

        // This allows the baseUri to be understand project paths that are not in the root directory
        // of the webpspace.  This will break if the public/index.php entry point is moved or
        // possibly if the web server rewrite rules are changed. This can also be set to a static path.
        'baseUri'     =>  '/',
    ),
    'user' => array(
        'admin' => array(
            'login' => 'admin',
            'password' => 'secret_admin_password',
            'role' => 'USER_ROLE_SUPERADMIN'
        ),
        'guest' => array(
            'role' => 'USER_ROLE_GUEST'
        )
               
    ),
    
    'permissions' => array(
        'USER_ROLE_SUPERADMIN' => array(
            'admin' => array('index', 'adminlogs', 'bounties', 'connections', 'destroylog', 'kills', 'logs', 'sectors', 'servermanage', 'serverstatus', 'smRanks', 'votes', 'adminMenu'),
            'index' => array('index', 'login','logout', 'notfound'),
            'asteroid' => array('list', 'adminMenu'),
            'player' => array('list', 'adminMenu'),
            'ship' => array('list', 'adminMenu'),
            'shop' => array('list', 'adminMenu'),
            'station' => array('list', 'adminMenu')
            
        ),
        'USER_ROLE_GUEST' => array(
            'index' => array('index', 'login', 'logout')
        )
        
        
        
    ),
    
    'path_to_doomsiders_shadow' => 'enter_here_path_to_doomsiders_shadow_directory',
    
    /**
     * if true, then we print a new line at the end of each CLI execution
     *
     * If we dont print a new line,
     * then the next command prompt will be placed directly on the left of the output
     * and it is less readable.
     *
     * You can disable this behaviour if the output of your application needs to don't have a new line at end
     */
    'printNewLine' => true
));
