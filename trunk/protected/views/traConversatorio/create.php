<?php
/* @var $this TraConversatorioController */
/* @var $model TraConversatorio */

$this->breadcrumbs=array(
	'Tra Conversatorios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar idioma_Conversatorio', 'url'=>array('index')),
	array('label'=>'Administrar idioma_Conversatorio', 'url'=>array('admin')),
);
?>

<h1>Crear idioma_Conversatorio</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>