<?php
/* @var $this ExposicionController */
/* @var $data Exposicion */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idexposicion')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idexposicion), array('view', 'id'=>$data->idexposicion)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre1')); ?>:</b>
	<?php echo CHtml::encode($data->nombre1); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre2')); ?>:</b>
	<?php echo CHtml::encode($data->nombre2); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('lugar')); ?>:</b>
	<?php echo CHtml::encode($data->lugar); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fecha_inicio')); ?>:</b>
	<?php echo CHtml::encode($data->fecha_inicio); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fecha_fin')); ?>:</b>
	<?php echo CHtml::encode($data->fecha_fin); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tipo')); ?>:</b>
	<?php echo CHtml::encode($data->tipo); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('pais')); ?>:</b>
	<?php echo CHtml::encode($data->pais); ?>
	<br />

	*/ ?>

</div>