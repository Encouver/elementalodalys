<?php
/* @var $this ObraController */
/* @var $model Obra */

$this->breadcrumbs=array(
	'Obras'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Obra', 'url'=>array('index')),
	array('label'=>'Manage Obra', 'url'=>array('admin')),
);
?>

<h1>Create Obra</h1>
<div>
	<h2>Español</h2>
	<div>
	<?php $this->renderPartial('_form', array('model'=>$model,'obligatorio'=>true)); ?>
	</div>

	<!-- Dependiendo del idioma seleccionado se carga teste modelo -->

	<h2>Ingles</h2>
	<div>
	<?php $this->renderPartial('_form', array('model'=>$model,'obligatorio'=>false)); ?>
	</div>

</div>