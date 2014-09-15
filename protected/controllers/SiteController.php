<?php

class SiteController extends Controller
{

	public $layout='//layouts/column11';
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	public function actionTrans($_lang){
		
		// Guardando el unico del lenguage en session _lang
		Yii::app()->session['_lang'] = $_lang;

		Yii::app()->user->returnUrl = Yii::app()->request->urlReferrer;
		
		$this->redirect(Yii::app()->user->returnUrl);
	}
	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
	

		$idioma = Idiomas::model()->find('idioma=:idioma',array(':idioma'=>Yii::app()->language));

		if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español
		
			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*';
	    	$criteria->order = 'fecha DESC';
			
		}else{ //ingles

			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*, tra_noticia.*';
	    	$criteria->join ='LEFT JOIN tra_noticia ON tra_noticia.noticiaid = t.idnoticia';
	    	$criteria->order = 'fecha DESC';
	    	$criteria->condition = 'tra_noticia.idiomaid =:id';
	    	$criteria->params = array(':id' => $idioma->id);
							
		}
			
		$noticias = Noticia::model()->findAll($criteria);
		$this->render('index', array(
			'noticias' => $noticias, 'idioma' => $idioma
        ));

	}


	public function actionQuienessomos(){
		
		$this->render('quienessomos');		
	
	}

	public function actionExposicionesferias(){
		
		$idioma = Idiomas::model()->find('idioma=:idioma',array(':idioma'=>Yii::app()->language));

		if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español
		
			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*';
	    	$criteria->order = "fecha_inicio DESC";
			

		}else{ //ingles

			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*, tra_exposicion.*';
	    	$criteria->together = true;
	    	$criteria->join ='LEFT JOIN tra_exposicion ON tra_exposicion.exposicionid = t.idexposicion';
	    	$criteria->order = "fecha_inicio DESC";
	    	$criteria->condition = 'tra_exposicion.idiomaid =:id';
	    	$criteria->params = array(':id' => $idioma->id);


			
			
		}
			$expoferias = Exposicion::model()->findAll($criteria);

		$this->render('exposicionesferias', array(
			'expoferias' => $expoferias, 'idioma'=>$idioma
        ));
	
	}

	public function actionExposicionesferias_detalle($expoferia){
/*		
	
		$criteria = new CDbCriteria;
		$criteria->select = 't.*';
		$criteria->together = true;
		$criteria->join ='LEFT JOIN tra_exposicion ON tra_exposicion.exposicionid = t.idexposicion';
		$criteria->order = "fecha_inicio DESC";
		$criteria->condition = 'tra_exposicion.idiomaid =:id';
		$criteria->params = array(':id' => $idioma->id);
		$catalogo = Catalogo::model()->findAll($criteria);
*/




		$this->render('exposicionesferias_detalle', array(
			''
        ));		
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		$model=new ContactForm;
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
				$subject='=?UTF-8?B?'.base64_encode($model->subject).'?=';
				$headers="From: $name <{$model->email}>\r\n".
					"Reply-To: {$model->email}\r\n".
					"MIME-Version: 1.0\r\n".
					"Content-Type: text/plain; charset=UTF-8";

				mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
				Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				$this->refresh();
			}
		}
		$this->render('contact',array('model'=>$model));
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$this->layout='//layouts/column1';
		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
		$this->render('login',array('model'=>$model));
	}

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}

	
}