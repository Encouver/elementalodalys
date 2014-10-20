<?php

class VerniFiniController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('@'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('@'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	private function NewGuid() { 
                $stamp = @date("Ymdhis");
                $s = strtoupper(md5(uniqid($stamp,true))); 
                $guidText = 
                        substr($s,0,8). 
                        substr($s,8,4). 
                        substr($s,12,4). 
                        substr($s,16,4). 
                        substr($s,20); 
                return $guidText;
	}


	public function actionCreate()
	{
		$model=new VerniFini;
		$tra_vernifini = new TraVerniFini;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		define ('SITE_ROOT', realpath(dirname(__FILE__)));


		if(isset($_POST['VerniFini']))
		{
			$model->attributes=$_POST['VerniFini'];
			$model->imagen = "0";
			//echo count($_FILES['imagen']['name']);
			if($model->validate() and count($_FILES['imagen']['name'])>=1)
			{
				$idexpo = $model->idexposicion;
				$idiomaid = $model->idiomaid;
				$directorio = 'images/vernifini/originals/';
				
				
					$porciones = explode("<br>", $model->descripcion);

					$porciones_tra = explode("<br>", $model->text_language);

					$i = 0;
					 while($i < count($_FILES['imagen']['name'])){
	 					
	 					if($i != 0)
	 					{
	 						$model= new VerniFini;
	 						$tra_vernifini = new TraVerniFini;
	 					}

	 					$model->idiomaid = $idiomaid; // solo para que no valide al momento de insertar en el for.
	 					$model->text_language = "auxiliar";
		 				$nombre = $this->NewGuid();
						
						if($_FILES['imagen']['type'][$i]=="image/jpeg")
						{
							$tipo = "jpg";
						}else
						{
							$tipo = "png";
						}
						
						$destino = $directorio.$nombre.'.'.$tipo;
						$model->imagen = $nombre.'.'.$tipo;
						$model->idexposicion = $idexpo;
						
						move_uploaded_file($_FILES['imagen']['tmp_name'][$i],$destino);

						
						(!empty($porciones[$i])) ? $model->descripcion = $porciones[$i] : $model->descripcion = "";
						$model->save();

						$tra_vernifini->idiomaid = $idiomaid;
						$tra_vernifini->verni_finiid = $model->idverni_fini;
						(!empty($porciones_tra[$i])) ? $tra_vernifini->descripcion = $porciones_tra[$i] : $tra_vernifini->descripcion = 0;
						

						$tra_vernifini->save();


						$i++;			 
				 	}
				$this->redirect(array('admin')); 
			}

		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		$tra_vernifini = TraVerniFini::model()->find('verni_finiid=:id AND idiomaid=:idiomaid',
			array(
			  ':id'=>$id,
			  ':idiomaid'=>2, //ingles
			));
			
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['VerniFini']))
		{
			
			$model->attributes=$_POST['VerniFini'];
			if($model->save()){
				$tra_vernifini->descripcion = $model->text_language;
				$tra_vernifini->idiomaid = $model->idiomaid;
				$tra_vernifini->save();
				//$tra = new TraVerniFini();
				$this->redirect(array('view','id'=>$model->idverni_fini));
			}
				
		}else
		{
			$model->text_language=$tra_vernifini->descripcion;
			$model->idiomaid = 2; //ingles
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		unlink('images/vernifini/originals/'.$this->loadModel($id)->imagen);
		
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('VerniFini');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new VerniFini('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['VerniFini']))
			$model->attributes=$_GET['VerniFini'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return VerniFini the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=VerniFini::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param VerniFini $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='verni-fini-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
