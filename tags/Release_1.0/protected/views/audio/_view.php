<?php
/* @var $this AudioController */
/* @var $data Audio */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idaudio')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idaudio), array('view', 'id'=>$data->idaudio)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idexposicion')); ?>:</b>
	<?php echo CHtml::encode($data->idexposicion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('datos')); ?>:</b>
	<?php echo CHtml::encode($data->datos); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('audio_ruta')); ?>:</b>
	<?php echo CHtml::encode($data->audio_ruta); ?>
	<br />


</div>