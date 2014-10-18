<?php
/* @var $this TraArtistaController */
/* @var $model TraArtista */

$this->breadcrumbs=array(
	'Tra Artistas'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar idioma_Artista', 'url'=>array('index')),
	array('label'=>'Crear idioma_Artista', 'url'=>array('create')),
	array('label'=>'Ver idioma_Artista', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Administrar idioma_Artista', 'url'=>array('admin')),
);
?>

<h1>Actualizar idioma_Artista <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>