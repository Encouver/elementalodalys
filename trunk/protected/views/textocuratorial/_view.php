<?php
/* @var $this TextocuratorialController */
/* @var $data Textocuratorial */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idtextocuratorial')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idtextocuratorial), array('view', 'id'=>$data->idtextocuratorial)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('titulo')); ?>:</b>
	<?php echo CHtml::encode($data->titulo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contenido')); ?>:</b>
	<?php echo CHtml::encode($data->contenido); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('autor')); ?>:</b>
	<?php echo CHtml::encode($data->autor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cargo_autor')); ?>:</b>
	<?php echo CHtml::encode($data->cargo_autor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idexposicion')); ?>:</b>
	<?php echo CHtml::encode($data->idexposicion); ?>
	<br />


</div>