<?php
/* @var $this TraTextocuratorialController */
/* @var $model TraTextocuratorial */

$this->breadcrumbs=array(
	'Tra Textocuratorials'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar idioma_TextoCuratorial', 'url'=>array('index')),
	array('label'=>'Crear idioma_TextoCuratorial', 'url'=>array('create')),
	array('label'=>'Ver idioma_TextoCuratorial', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Administrar idioma_TextoCuratorial', 'url'=>array('admin')),
);
?>

<h1>Actualizar idioma_TextoCuratorial <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>