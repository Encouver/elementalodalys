<?php
/* @var $this TraConversatorioController */
/* @var $model TraConversatorio */

$this->breadcrumbs=array(
	'Tra Conversatorios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TraConversatorio', 'url'=>array('index')),
	array('label'=>'Manage TraConversatorio', 'url'=>array('admin')),
);
?>

<h1>Create TraConversatorio</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>