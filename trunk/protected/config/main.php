<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Elemental Odalys',
	'sourceLanguage' => 'es',
	'language' => 'es',

	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'application.helpers.*',
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool
		
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'elemental',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),
		
	),

	// application components
	'components'=>array(
		'user'=>array(
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
            // Create a custom key prefix for the user cookie
            'stateKeyPrefix'=>'ELE',
		),
		// uncomment the following to enable URLs in path-format
		'request'=>array(
       		 'enableCookieValidation'=>true,
        	'enableCsrfValidation'=>true,
 		),

	/*	'urlManager'=>array(
			'urlFormat'=>'path',
			'showScriptName'=>false,
			'rules'=>array(
				'<controller:\w+>/<id:\d+>'=>'<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
			),
		),*/

		'urlManager'=>array(
	        'class'=>'application.components.UrlManager',
	        'urlFormat'=>'path',
	        'showScriptName'=>false,
	        'rules'=>array(
	            '<language:(es|en)>/' => 'site/index',
	            //Ejemplo: "company/<company:\w+>"=>"/site/showCompany/company/<company>"
	            //'<language:(es|en)>/<action:(ver)>/<expoferia:[\w+\s{0,}\W+]*\d{0,1}\|{0,1}\d{0,1}>' => 'site/<action>',
	            '<language:(es|en)>/<action:(ver)>/<expoferia>' => 'site/<action>',
	            //'<language:(es|en)>/<action:(ver)>/<expoferia:\w+>' => '/site/<action>/expoferia/',
	            //es/site/artista/id/4/art/Ádám
	            //'<language:(es|en)>/<action:(artist)>/<art:\w+>' => '/site/<action>/id/<id>/art/<art>',
	            //'<language:(es|en)>/<action:(artist)>/<art:[[\([\w+\s{0,}]*\)]*\w+\s{0,1}]*>/*' => 'site/<action>',
	            '<language:(es|en)>/<action:(artist)>/<art>/*' => 'site/<action>',
	            '<language:(es|en)>/<action:(contact|login|logout|artistas)>/*' => 'site/<action>',
	            '<language:(es|en)>/<controller:\w+>/<id:\d+>'=>'<controller>/view',
	            '<language:(es|en)>/<controller:\w+>'=>'<controller>/index',
	            '<language:(es|en)>/<controller:\w+>/<action:\w+>/<id:\w+>'=>'<action>/<id>',
	            /*'<language:(es|en)>/<controller:\w+>/<id:\d+>'=>'<controller>/ver',
	            '<language:(es|en)>/<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<id>',*/
	            '<language:(es|en)>/<controller:\w+>/<action:\w+>/*'=>'<controller>/<action>',
		        

		        ),
	    ),
		/*
		'db'=>array(
			'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
		),*/
		// uncomment the following to use a MySQL database
		
		'db'=>array(
			'connectionString' => 'mysql:host=localhost;dbname=elemental',
			'emulatePrepare' => true,
			'username' => 'elemental',
			'password' => 'elemental',
			'charset' => 'utf8',
		),
		
		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
				// uncomment the following to show log messages on web pages
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),

		// http://www.yiiframework.com/extension/smtp-mail/
		'Smtpmail'=>array(
	            'class'=>'application.extensions.smtpmail.PHPMailer',
	            'Host'=>"mail.gmail.com",
	            'Username'=>'noreply@odalys.com',
	            'Password'=>'noreply..123nr.',
	            'From'=>'noreply@odalys.com',
	            'Mailer'=>'smtp',
	            'Port'=>587,
	            'SMTPAuth'=>true, 
	            'SMTPSecture'=>'tls',   
	    ),

		// Link: http://www.yiiframework.com/extension/image
		'image'=>array(
          'class'=>'application.extensions.image.CImageComponent',
            // GD or ImageMagick
            'driver'=>'GD',
            // ImageMagick setup path
            'params'=>array('directory'=>'/opt/local/bin'),
        ),
		'widgetFactory'=>array(
		            'widgets'=>array(
		            	// Link: http://www.yiiframework.com/extension/image-displayer/
		                'SAImageDisplayer'=>array(
		                    'baseDir' => 'images',
		                    'originalFolderName'=> 'originals',
		                    'sizes' =>array(
		                        'pequena' => array('width' => 40, 'height' => 30),
		                        'grande' => array('width' => 640, 'height' => 480),
		                        'previa' => array('width' => 400, 'height' => 300),
		                    ),
		                    'groups' => array(
		                        'noticia' => array(
		                            'pequena' => array('width' => 120, 'height' => 120),
		                            'grande' => array('width' => 489, 'height' => 300),
		                          ),
		                        'catalogo' => array(
		                            'pequena' => array('width' => 219, 'height' => 293),

		                         ), 
								'montaje' => array(
		                            'previa' => array('width' => 700, 'height' => 467),
		                         ), 
								'prensa' => array(
		                            'previa' => array('width' => 120, 'height' => 120),
		                         ), 
								'verni_fini' => array(
		                            'previa' => array('width' => 400, 'height' => 300),
		                         ), 
								'obra' => array(
		                            'previa' => array('width' => 400, 'height' => 300),
		                            'grande' => array('width' => 700, 'height' => 467),
		                         ), 
		                    ),
		                ),
		            ),
		        ),
		
		'behaviors' => array('ApplicationConfigBehavior'),

		'session' => array (
    		'class' => 'system.web.CDbHttpSession',
    		'connectionID' => 'db',
    		'sessionTableName' => 'tblsession',
    		// Provide a custom name for the session id to differentiate it 
            // from the default PHPSESSID
            // Cannot use dots in the session id :(
            'sessionName' => 'ELEMENTAL_SESSID',
		),
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'odalys@odalys.com',
		'idiomas'=>array('Español' => 'es', 'Ingles' => 'en'),
		'languages'=>array('es'=>'Español', 'en'=>'English'),
	),
);