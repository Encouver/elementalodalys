<?php

class MontajeController extends Controller
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

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Montaje;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Montaje']))
		{
			$model->attributes=$_POST['Montaje'];
			$model->imagen = "0";
			//echo count($_FILES['imagen']['name']);
			if($model->validate() and count($_FILES['imagen']['name'])>1)
			{
				$idexpo = $model->idexposicion;
				$directorio = 'images/montaje/originals/';
				
				$porciones = explode("<br>", $model->descripcion);

				$i = 0;
				 while($i < count($_FILES['imagen']['name'])){
 					
 					if($i != 0)
 					{
 						$model= new Montaje;
 					}

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

					$model->descripcion = $porciones[$i];
					$model->save();
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

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Montaje']))
		{
			$model->attributes=$_POST['Montaje'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->idmontaje));
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
		unlink('images/montaje/originals/'.$this->loadModel($id)->imagen);

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
		$dataProvider=new CActiveDataProvider('Montaje');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Montaje('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Montaje']))
			$model->attributes=$_GET['Montaje'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Montaje the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Montaje::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Montaje $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='montaje-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
