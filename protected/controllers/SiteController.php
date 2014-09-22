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

	    	$criteria2 = new CDbCriteria;
	    	$criteria2->select = 't.*';
	    	$criteria2->condition = 't.lugar = :lugar';
	    	$criteria2->params= array(':lugar' => 'index_derecha');



		}else{ //ingles

			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*, tra_noticia.*';
	    	$criteria->join ='LEFT JOIN tra_noticia ON tra_noticia.noticiaid = t.idnoticia';
	    	$criteria->order = 'fecha DESC';
	    	$criteria->condition = 'tra_noticia.idiomaid =:id';
	    	$criteria->params = array(':id' => $idioma->id);
			
			$criteria2 = new CDbCriteria;
	    	$criteria2->select = 't.*, tra_texto.*';
	    	$criteria2->join ='LEFT JOIN tra_texto ON tra_texto.textoid = t.idtexto';
	    	$criteria2->condition = 'tra_texto.idiomaid =:id and t.lugar = :lugar';
	    	$criteria2->params = array(':id' => $idioma->id, ':lugar' => 'index_derecha');


		}
			$criteria3= new CDbCriteria;
			$criteria3->select ='t.*';
			$criteria3->order = 'apellido ASC';

		$artistas = Artista::model()->findAll($criteria3);

		$noticias = Noticia::model()->findAll($criteria);
		$texto = Texto::model()->find($criteria2);

		$this->render('index', array(
			'noticias' => $noticias, 'idioma' => $idioma, 'texto' => $texto, 'artistas'=>$artistas,
        ));

	}


	public function actionQuienessomos(){
		

		$idioma = Idiomas::model()->find('idioma=:idioma',array(':idioma'=>Yii::app()->language));

		if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español

	    	$criteria2 = new CDbCriteria;
	    	$criteria2->select = 't.*';
	    	$criteria2->condition = 't.lugar = :lugar';
	    	$criteria2->params= array(':lugar' => 'quienessomos');


		}else{ //ingles


			
			$criteria2 = new CDbCriteria;
	    	$criteria2->select = 't.*, tra_texto.*';
	    	$criteria2->join ='LEFT JOIN tra_texto ON tra_texto.textoid = t.idtexto';
	    	$criteria2->condition = 'tra_texto.idiomaid =:id and t.lugar = :lugar';
	    	$criteria2->params = array(':id' => $idioma->id, ':lugar' => 'quienessomos');



		}
		
		$quienessomos = Texto::model()->find($criteria2);



		$this->render('quienessomos', array('quienessomos' => $quienessomos));		



	
	}

	public function actionAlianzas(){
		

		$idioma = Idiomas::model()->find('idioma=:idioma',array(':idioma'=>Yii::app()->language));

		if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español

	    	$criteria2 = new CDbCriteria;
	    	$criteria2->select = 't.*';
	    	$criteria2->condition = 't.lugar = :lugar';
	    	$criteria2->params= array(':lugar' => 'alianzas');


		}else{ //ingles


			
			$criteria2 = new CDbCriteria;
	    	$criteria2->select = 't.*, tra_texto.*';
	    	$criteria2->join ='LEFT JOIN tra_texto ON tra_texto.textoid = t.idtexto';
	    	$criteria2->condition = 'tra_texto.idiomaid =:id and t.lugar = :lugar';
	    	$criteria2->params = array(':id' => $idioma->id, ':lugar' => 'alianzas');



		}
		
		$alianzas = Texto::model()->find($criteria2);



		$this->render('alianzas', array('alianzas' => $alianzas));		
	
	}
	public function actionBecas(){



		$idioma = Idiomas::model()->find('idioma=:idioma',array(':idioma'=>Yii::app()->language));

		if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español

	    	$criteria2 = new CDbCriteria;
	    	$criteria2->select = 't.*';
	    	$criteria2->condition = 't.lugar = :lugar';
	    	$criteria2->params= array(':lugar' => 'becas');


		}else{ //ingles


			
			$criteria2 = new CDbCriteria;
	    	$criteria2->select = 't.*, tra_texto.*';
	    	$criteria2->join ='LEFT JOIN tra_texto ON tra_texto.textoid = t.idtexto';
	    	$criteria2->condition = 'tra_texto.idiomaid =:id and t.lugar = :lugar';
	    	$criteria2->params = array(':id' => $idioma->id, ':lugar' => 'becas');



		}
		
		$becas = Texto::model()->find($criteria2);



		$this->render('becas', array('becas' => $becas));		


	
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

	public function actionver($expoferia){
	
		$idioma = Idiomas::model()->find('idioma=:idioma',array(':idioma'=>Yii::app()->language));

		//**TODAS
		//id de la exposicion
			$criteria = new CDbCriteria;
			$criteria->select = 't.*';
			$criteria->condition = 't.nombre1 =:x';
			$criteria->params = array(':x' => $expoferia);
			$expo_feria = Exposicion::model()->find($criteria);

			$idexpo = $expo_feria->idexposicion;

		//**TODAS
		//datos de la expo/feria

			if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español
			
				$criteria = new CDbCriteria;
		    	$criteria->select = 't.*';
				
			}else{ //ingles

				$criteria = new CDbCriteria;
		    	$criteria->select = 't.*, tra_exposicion.*';
		    	$criteria->together = true;
		    	$criteria->join ='LEFT JOIN tra_exposicion ON tra_exposicion.exposicionid = t.idexposicion';
		    	$criteria->condition = 'tra_exposicion.idiomaid =:id';
		    	$criteria->params = array(':id' => $idioma->id);

			}
			
			$datos = Exposicion::model()->find($criteria);

		//**COLECTIVA, INDIVIDUAL
		//catalogos
			$criteria = new CDbCriteria;
			$criteria->select = 't.*';
			$criteria->condition = 't.idexposicion =:id';
			$criteria->params = array(':id' => $idexpo);
			$catalogo = Catalogo::model()->findAll($criteria);

		//**COLECTIVA, FERIA
		//artistas de la expo
			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*, artista_expo.*';
	    	$criteria->together = true;
	    	$criteria->join ='INNER JOIN artista_expo ON artista_expo.idartista = t.idartista';
			$criteria->condition = 'artista_expo.idexposicion =:id';
			$criteria->params = array(':id' => $idexpo);
	    	$criteria->order = "t.apellido ASC";
			$artistas = Artista::model()->findAll($criteria);
			
			$obras = array();
			if($artistas){
				$criteria = new CDbCriteria;
		    	$criteria->select = 't.*';
				$criteria->condition = 't.idartista =:idartista';
				$criteria->join ='LEFT JOIN tra_obra ON tra_obra.obraid = t.idobra AND tra_obra.idiomaid=:ididioma';
				$criteria->params = array(':idartista' => $artistas[0]->idartista,':ididioma'=> $idioma->id);
				$obras = Obra::model()->findAll($criteria);
			}

			/*$obras[] = array();
			foreach ($artistas as $artista => $art) {
				$criteria = new CDbCriteria;
		    	$criteria->select = 't.*';
				$criteria->condition = 't.idartista =:idartista';
				$criteria->join ='LEFT JOIN tra_obra ON tra_obra.obraid = t.idobra AND tra_obra.idiomaid=:ididioma';
				$criteria->params = array(':idartista' => $art->idartista,':ididioma'=> $idioma->id);
		    	//$criteria->order = "t.apellido ASC";

				$obras[$art->idartista] = Obra::model()->findAll($criteria);

			}*/

		//obras
		/*		
			$criteria = new CDbCriteria;
			$criteria->select = 't.*';
			$criteria->condition = 't.idexposicion =:id';
			$criteria->params = array(':id' => $idexpo);
			$obras = ExpoObra::model()->findAll($criteria);

			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*, tra_exposicion.*';
	    	$criteria->together = true;
	    	$criteria->join ='LEFT JOIN tra_exposicion ON tra_exposicion.exposicionid = t.idexposicion';
	    	$criteria->order = "fecha_inicio DESC";
	    	$criteria->condition = 'tra_exposicion.idiomaid =:id';
	    	$criteria->params = array(':id' => $idioma->id);

		*/


		//**TODAS
		//montaje
			$criteria = new CDbCriteria;
			$criteria->select = 't.*';
			$criteria->condition = 't.idexposicion =:id';
			$criteria->params = array(':id' => $idexpo);
			$montajes = Montaje::model()->findAll($criteria);

		//**COLECTIVA
		//Verni-fini
			$criteria = new CDbCriteria;
			$criteria->select = 't.*';
			$criteria->condition = 't.idexposicion =:id';
			$criteria->params = array(':id' => $idexpo);
			$vernifinis = VerniFini::model()->findAll($criteria);

		//**COLECTIVA
		//Audio
			if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español
				$criteria = new CDbCriteria;
				$criteria->select = 't.*';
				$criteria->condition = 't.idexposicion =:idexpo';
				$criteria->params = array(':idexpo' => $idexpo);

			}else{//ingles

				$criteria = new CDbCriteria;
		    	$criteria->select = 't.*, tra_audio.*';
		    	$criteria->together = true;
		    	$criteria->join ='LEFT JOIN tra_audio ON tra_audio.audioid = t.idaudio';
				$criteria->condition = 't.idexposicion =:idexpo and tra_audio.idiomaid =:ididioma';
				$criteria->params = array(':idexpo' => $idexpo,':ididioma' => $idioma->id);
	
			}
		
			$audio = Audio::model()->find($criteria);


		//**COLECTIVA, INDIVIDUAL
		//conversatorio
			$criteria = new CDbCriteria;
			$criteria->select = 't.*';
			$criteria->condition = 't.idexposicion =:idexpo';
			$criteria->params = array(':idexpo' => $idexpo);		
			$conversatorios = Conversatorio::model()->findAll($criteria);

		//**TODAS
		//prensa

			if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español

				$criteria = new CDbCriteria;
				$criteria->select = 't.*';
				$criteria->condition = 't.idexposicion =:idexpo';
				$criteria->params = array(':idexpo' => $idexpo);
				$criteria->order = 	'fecha DESC';

			}else{

				$criteria = new CDbCriteria;
		    	$criteria->select = 't.*, tra_prensa.*';
		    	$criteria->together = true;
		    	$criteria->join ='LEFT JOIN tra_prensa ON tra_prensa.prensaid = t.idprensa';
				$criteria->condition = 't.idexposicion =:idexpo and tra_prensa.idiomaid =:ididioma';
				$criteria->params = array(':idexpo' => $idexpo,':ididioma' => $idioma->id);			
				$criteria->order = 	'fecha DESC';

			}

			$prensas = Prensa::model()->findAll($criteria);


		$this->render('ver', array(
        'datos'=> $datos, 'idioma'=>$idioma, 'tipo'=> $expo_feria->tipo, 'catalogo'=>$catalogo, 'artistas'=>$artistas,
        'montajes'=>$montajes, 'vernifinis' =>$vernifinis, 'audio'=>$audio, 'conversatorios'=>$conversatorios,
        'prensas'=>$prensas, 'obras'=> $obras));		
	}


	public function actionBuscarObrasArtista($artista)
	{
		
		$idioma = Idiomas::model()->find('idioma=:idioma',array(':idioma'=>Yii::app()->language));

		$criteria = new CDbCriteria;
    	$criteria->select = 't.*';
		$criteria->condition = 't.idartista =:idartista';
		$criteria->join ='LEFT JOIN tra_obra ON tra_obra.obraid = t.idobra AND tra_obra.idiomaid=:ididioma';
		$criteria->params = array(':idartista' => $artista,':ididioma'=> $idioma->id);

		$obras= Obra::model()->findAll($criteria);

		//fotorama
		$this->renderPartial('_obras', array('obras' => $obras, 'idioma'=>$idioma));

	}


	public function actionArtistas(){
		$idioma = Idiomas::model()->find('idioma=:idioma',array(':idioma'=>Yii::app()->language));

		if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español
		
			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*';
	    	$criteria->order = "t.apellido ASC";
			
		}else{ //ingles

			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*, tra_artista.*';
	    	$criteria->together = true;
	    	$criteria->join ='LEFT JOIN tra_artista ON tra_artista.artistaid = t.idartista';
	    	$criteria->order = "t.apellido ASC";
	    	$criteria->condition = 'tra_artista.idiomaid =:id';
	    	$criteria->params = array(':id' => $idioma->id);	
		
		}
		
		$artistas = Artista::model()->findAll($criteria);

		
		$this->render('artistas', array(
			'artistas' => $artistas, 'idioma'=>$idioma
        ));


	}

	public function actionArtista($id) {

		$idioma = Idiomas::model()->find('idioma=:idioma',array(':idioma'=>Yii::app()->language));


	//datos del artista
		if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español
		
			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*';
	    	$criteria->condition = 't.idartista =:id';
	    	$criteria->params = array(':id' => $id);	
	
		
		}else{ //ingles

			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*, tra_artista.*';
	    	$criteria->together = true;
	    	$criteria->join ='LEFT JOIN tra_artista ON tra_artista.artistaid = t.idartista';
	    	$criteria->condition = 'tra_artista.idiomaid =:ididioma and t.idartista = :id';
	    	$criteria->params = array(':ididioma' => $idioma->id, ':id'=>$id);
		}
		$artista = Artista::model()->find($criteria);



	//prensa

		if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español

			$criteria = new CDbCriteria;
			$criteria->select = 't.*, artista_prensa.*';
	    	$criteria->together = true;
	    	$criteria->join ='LEFT JOIN artista_prensa ON artista_prensa.idprensa = t.idprensa';
			$criteria->condition = 'artista_prensa.idartista =:id';
			$criteria->params = array(':id' => $id);
			$criteria->order = 	'fecha DESC';

		}else{

			$criteria = new CDbCriteria;
			$criteria->select = 't.*, artista_prensa.*, tra_prensa.*';
	    	$criteria->together = true;
	    	$criteria->join ='LEFT JOIN artista_prensa ON artista_prensa.idprensa = t.idprensa LEFT JOIN tra_prensa ON tra_prensa.prensaid = t.idprensa';
			$criteria->condition = 'tra_prensa.idiomaid =:idioma and artista_prensa.idartista =:id';
			$criteria->params = array(':id' => $id, ':idioma' => $idioma->id);
			$criteria->order = 	't.fecha DESC';
			$criteria->group='t.idprensa';

		}

		$prensas = Prensa::model()->findAll($criteria);

		if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español
			$criteria = new CDbCriteria;
	    	$criteria->select = 't.*';
			$criteria->condition = 't.idartista =:idartista';
			$criteria->params = array(':idartista' => $id);

		}else{
	//obras
			
		$criteria = new CDbCriteria;
    	$criteria->select = 't.*';
		$criteria->condition = 't.idartista =:idartista';
		$criteria->join ='LEFT JOIN tra_obra ON tra_obra.obraid = t.idobra AND tra_obra.idiomaid=:ididioma';
		$criteria->params = array(':idartista' => $id,':ididioma'=> $idioma->id);
		
		}
		
		$obras= Obra::model()->findAll($criteria);



		$this->render('artista', array(
			'artista' => $artista, 'idioma'=>$idioma, 'obras' =>$obras, 'prensas'=>$prensas,
        ));


	}

	public function actionReqTest01() {
	    echo date('H:i:s');
	    $variable = "mantu";
	    echo $variable;
	    Yii::app()->end();
	}


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
	public function actionContacto()
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

	$idioma = Idiomas::model()->find('idioma=:idioma',array(':idioma'=>Yii::app()->language));

		if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español

	    	$criteria2 = new CDbCriteria;
	    	$criteria2->select = 't.*';
	    	$criteria2->condition = 't.lugar = :lugar';
	    	$criteria2->params= array(':lugar' => 'direcciones');


		}else{ //ingles


			
			$criteria2 = new CDbCriteria;
	    	$criteria2->select = 't.*, tra_texto.*';
	    	$criteria2->join ='LEFT JOIN tra_texto ON tra_texto.textoid = t.idtexto';
	    	$criteria2->condition = 'tra_texto.idiomaid =:id and t.lugar = :lugar';
	    	$criteria2->params = array(':id' => $idioma->id, ':lugar' => 'direcciones');



		}
		
		$direcciones = Texto::model()->find($criteria2);



		$this->render('contacto',array('model'=>$model,'direcciones' => $direcciones));
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