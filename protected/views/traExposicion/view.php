<?php
/* @var $this TraExposicionController */
/* @var $model TraExposicion */

$this->breadcrumbs=array(
	'Tra Exposicions'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Listar idioma_Exposición/Feria', 'url'=>array('index')),
	array('label'=>'Crear idioma_Exposición/Feria', 'url'=>array('create')),
	array('label'=>'Actualizar idioma_Exposición/Feria', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Eliminar idioma_Exposición/Feria', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar idioma_Exposición/Feria', 'url'=>array('admin')),
);
?>

<h1>Ver idioma_Exposición/Feria #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'pais',
		'exposicion.nombre1',
		'idioma.nombre',
	),
)); ?>
