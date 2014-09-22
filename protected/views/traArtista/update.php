<?php
/* @var $this TraArtistaController */
/* @var $model TraArtista */

$this->breadcrumbs=array(
	'Tra Artistas'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List TraArtista', 'url'=>array('index')),
	array('label'=>'Create TraArtista', 'url'=>array('create')),
	array('label'=>'View TraArtista', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage TraArtista', 'url'=>array('admin')),
);
?>

<h1>Update TraArtista <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>