<?php
/* @var $this TraPrensaController */
/* @var $model TraPrensa */

$this->breadcrumbs=array(
	'Tra Prensas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar idioma_Prensa', 'url'=>array('index')),
	array('label'=>'Administrar idioma_Prensa', 'url'=>array('admin')),
);
?>

<h1>Crear idioma_Prensa</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>