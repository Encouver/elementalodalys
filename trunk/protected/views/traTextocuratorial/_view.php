<?php
/* @var $this TraTextocuratorialController */
/* @var $data TraTextocuratorial */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idiomaid')); ?>:</b>
	<?php echo CHtml::encode($data->idiomaid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('textocuratorialid')); ?>:</b>
	<?php echo CHtml::encode($data->textocuratorialid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('titulo')); ?>:</b>
	<?php echo CHtml::encode($data->titulo); ?>
	<br />
<!--
	<b><?php echo CHtml::encode($data->getAttributeLabel('contenido')); ?>:</b>
	<?php echo CHtml::encode($data->contenido); ?>
	<br />
-->
	<b><?php echo CHtml::encode($data->getAttributeLabel('cargo_autor')); ?>:</b>
	<?php echo CHtml::encode($data->cargo_autor); ?>
	<br />


</div>