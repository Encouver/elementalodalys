<?php
/* @var $this ArtistaExpoController */
/* @var $model ArtistaExpo */

$this->breadcrumbs=array(
	'Artista Expos'=>array('index'),
	$model->idcolectiva_feria=>array('view','id'=>$model->idcolectiva_feria),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Artista - Expo/Feria', 'url'=>array('index')),
	array('label'=>'Crear Artista - Expo/Feria', 'url'=>array('create')),
	array('label'=>'Ver Artista - Expo/Feria', 'url'=>array('view', 'id'=>$model->idcolectiva_feria)),
	array('label'=>'Administrar Artista - Expo/Feria', 'url'=>array('admin')),
);
?>

<h1>Actualizar Artista - Expo/Feria <?php echo $model->idcolectiva_feria; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>