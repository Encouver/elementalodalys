<?php
/* @var $this TraExposicionController */
/* @var $data TraExposicion */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pais')); ?>:</b>
	<?php echo CHtml::encode($data->pais); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('exposicionid')); ?>:</b>
	<?php echo CHtml::encode($data->exposicion->nombre1)." ".CHtml::encode($data->exposicion->nombre2); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idiomaid')); ?>:</b>
	<?php echo CHtml::encode($data->idioma->nombre); ?>
	<br />


</div>