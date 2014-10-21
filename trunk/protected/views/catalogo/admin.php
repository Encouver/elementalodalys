<?php
/* @var $this CatalogoController */
/* @var $model Catalogo */

$this->breadcrumbs=array(
	'Catalogos'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Listar Catálogo', 'url'=>array('index')),
	array('label'=>'Crear Catálogo', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#catalogo-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Administrar Catálogos</h1>

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
	'id'=>'catalogo-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'idcatalogo',
		'idexposicion',
		'portada',
        array(
            'type' => 'raw',
            'name'=> 'portada',
            'value' => 'CHtml::image("'.Yii::app()->request->baseUrl.'/images/catalogo/originals/$data->portada", "portada" ,array("width"=>100))',
            'filter'=> false,
        ),
		'portada_thumb',
		'pdf',
		'datos',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
