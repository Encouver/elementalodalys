<?php
/* @var $this ObraController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Obras',
);

$this->menu=array(
	array('label'=>'Create Obra', 'url'=>array('create')),
	array('label'=>'Manage Obra', 'url'=>array('admin')),
	array('label'=>'Create in other languages ', 'url'=>array('traObra/index')),
);
?>

<h1>Obras</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
