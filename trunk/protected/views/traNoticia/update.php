<?php
/* @var $this TraNoticiaController */
/* @var $model TraNoticia */

$this->breadcrumbs=array(
	'Tra Noticias'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar idioma_Noticia', 'url'=>array('index')),
	array('label'=>'Crear idioma_Noticia', 'url'=>array('create')),
	array('label'=>'Ver idioma_Noticia', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Administrar idioma_Noticia', 'url'=>array('admin')),
);
?>

<h1>Actualizar idioma_Noticia <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>