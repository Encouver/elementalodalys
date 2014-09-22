<?php
/* @var $this TraAudioController */
/* @var $data TraAudio */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idiomaid')); ?>:</b>
	<?php echo CHtml::encode($data->idiomaid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('audioid')); ?>:</b>
	<?php echo CHtml::encode($data->audioid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('datos')); ?>:</b>
	<?php echo CHtml::encode($data->datos); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('audio_ruta')); ?>:</b>
	<?php echo CHtml::encode($data->audio_ruta); ?>
	<br />


</div>