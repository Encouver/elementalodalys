<?php
/* @var $this TraPrensaController */
/* @var $model TraPrensa */

$this->breadcrumbs=array(
	'Tra Prensas'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar idioma_Prensa', 'url'=>array('index')),
	array('label'=>'Crear idioma_Prensa', 'url'=>array('create')),
	array('label'=>'Ver idioma_Prensa', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Administrar idioma_Prensa', 'url'=>array('admin')),
);
?>

<h1>Actualizar idioma_Prensa <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>