<?php
/* @var $this TraExposicionController */
/* @var $model TraExposicion */

$this->breadcrumbs=array(
	'Tra Exposicions'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Listar idioma_Exposición/Feria', 'url'=>array('index')),
	array('label'=>'Crear idioma_Exposición/Feria', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#tra-exposicion-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Administrar idioma_Exposición/Feria</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'tra-exposicion-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'pais',
		'exposicion.nombre1',
		'idioma.nombre',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
