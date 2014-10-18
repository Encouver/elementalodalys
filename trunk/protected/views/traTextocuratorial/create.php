<?php
/* @var $this TraTextocuratorialController */
/* @var $model TraTextocuratorial */

$this->breadcrumbs=array(
	'Tra Textocuratorials'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar idioma_TextoCuratorial', 'url'=>array('index')),
	array('label'=>'Administrar TextoCuratorial', 'url'=>array('admin')),
);
?>

<h1>Crear idioma_TextoCuratorial</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>