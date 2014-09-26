<?php
/* @var $this ArtistaExpoController */
/* @var $model ArtistaExpo */

$this->breadcrumbs=array(
	'Artista Expos'=>array('index'),
	$model->idcolectiva_feria=>array('view','id'=>$model->idcolectiva_feria),
	'Update',
);

$this->menu=array(
	array('label'=>'List ArtistaExpo', 'url'=>array('index')),
	array('label'=>'Create ArtistaExpo', 'url'=>array('create')),
	array('label'=>'View ArtistaExpo', 'url'=>array('view', 'id'=>$model->idcolectiva_feria)),
	array('label'=>'Manage ArtistaExpo', 'url'=>array('admin')),
);
?>

<h1>Update ArtistaExpo <?php echo $model->idcolectiva_feria; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>