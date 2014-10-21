<?php
/* @var $this FotosexposicionController */
/* @var $model Fotosexposicion */

$this->breadcrumbs=array(
	'Fotosexposicions'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Listar Fotosexposicion', 'url'=>array('index')),
	array('label'=>'Crear Fotosexposicion', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#fotosexposicion-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Administrar Fotosexposicions</h1>

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
	'id'=>'fotosexposicion-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'idfotosexposicion',
		'imagen',
        array(
            'type' => 'raw',
            'name'=> 'imagen',
            'value' => 'CHtml::image("'.Yii::app()->request->baseUrl.'/images/exposicion/originals/$data->imagen", "imagen" ,array("width"=>100))',
            'filter'=> false,
        ),		'idexposicion',
		'descripcion',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
