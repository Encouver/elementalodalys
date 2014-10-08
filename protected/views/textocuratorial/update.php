<?php
/* @var $this TextocuratorialController */
/* @var $model Textocuratorial */

$this->breadcrumbs=array(
	'Textocuratorials'=>array('index'),
	$model->idtextocuratorial=>array('view','id'=>$model->idtextocuratorial),
	'Update',
);

$this->menu=array(
	array('label'=>'List Textocuratorial', 'url'=>array('index')),
	array('label'=>'Create Textocuratorial', 'url'=>array('create')),
	array('label'=>'View Textocuratorial', 'url'=>array('view', 'id'=>$model->idtextocuratorial)),
	array('label'=>'Manage Textocuratorial', 'url'=>array('admin')),
);
?>

<h1>Update Textocuratorial <?php echo $model->idtextocuratorial; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>