<?php
/* @var $this TraConversatorioController */
/* @var $data TraConversatorio */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idiomaid')); ?>:</b>
	<?php echo CHtml::encode($data->idiomaid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('conversatorioid')); ?>:</b>
	<?php echo CHtml::encode($data->conversatorioid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />


</div>