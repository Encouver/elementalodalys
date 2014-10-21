<?php
/* @var $this VerniFiniController */
/* @var $model VerniFini */

$this->breadcrumbs=array(
	'Verni Finis'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Listar VerniFini', 'url'=>array('index')),
	array('label'=>'Crear VerniFini', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#verni-fini-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Administrar VerniFinis</h1>

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
	'id'=>'verni-fini-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'idverni_fini',
		'imagen',
        array(
            'type' => 'raw',
            'name'=> 'imagen',
            'value' => 'CHtml::image("'.Yii::app()->request->baseUrl.'/images/vernifini/originals/$data->imagen", "imagen" ,array("width"=>100))',
            'filter'=> false,
        ),
        		'imagen_thumb',
		'idexposicion',
		'descripcion',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
