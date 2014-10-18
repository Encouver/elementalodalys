<?php
/* @var $this TraConversatorioController */
/* @var $model TraConversatorio */

$this->breadcrumbs=array(
	'Tra Conversatorios'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar idioma_Conversatorio', 'url'=>array('index')),
	array('label'=>'Crear idioma_Conversatorio', 'url'=>array('create')),
	array('label'=>'Ver idioma_Conversatorio', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Administrar idioma_Conversatorio', 'url'=>array('admin')),
);
?>

<h1>Actualizar idioma_Conversatorio <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>