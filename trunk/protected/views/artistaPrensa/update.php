<?php
/* @var $this ArtistaPrensaController */
/* @var $model ArtistaPrensa */

$this->breadcrumbs=array(
	'Artista Prensas'=>array('index'),
	$model->idartista_prensa=>array('view','id'=>$model->idartista_prensa),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Artista - Prensa', 'url'=>array('index')),
	array('label'=>'Crear Artista - Prensa', 'url'=>array('create')),
	array('label'=>'Ver Artista - Prensa', 'url'=>array('view', 'id'=>$model->idartista_prensa)),
	array('label'=>'Administrar Artista - Prensa', 'url'=>array('admin')),
);
?>

<h1>Actualizar Artista - Prensa <?php echo $model->idartista_prensa; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>