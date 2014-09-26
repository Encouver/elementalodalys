<?php
/* @var $this ArtistaPrensaController */
/* @var $model ArtistaPrensa */

$this->breadcrumbs=array(
	'Artista Prensas'=>array('index'),
	$model->idartista_prensa=>array('view','id'=>$model->idartista_prensa),
	'Update',
);

$this->menu=array(
	array('label'=>'List ArtistaPrensa', 'url'=>array('index')),
	array('label'=>'Create ArtistaPrensa', 'url'=>array('create')),
	array('label'=>'View ArtistaPrensa', 'url'=>array('view', 'id'=>$model->idartista_prensa)),
	array('label'=>'Manage ArtistaPrensa', 'url'=>array('admin')),
);
?>

<h1>Update ArtistaPrensa <?php echo $model->idartista_prensa; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>