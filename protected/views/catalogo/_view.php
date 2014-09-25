<?php
/* @var $this CatalogoController */
/* @var $data Catalogo */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idcatalogo')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idcatalogo), array('view', 'id'=>$data->idcatalogo)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idexposicion')); ?>:</b>
	<?php echo CHtml::encode($data->idexposicion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('portada')); ?>:</b>
	<?php echo CHtml::encode($data->portada); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('portada_thumb')); ?>:</b>
	<?php echo CHtml::encode($data->portada_thumb); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pdf')); ?>:</b>
	<?php echo CHtml::encode($data->pdf); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('datos')); ?>:</b>
	<?php echo CHtml::encode($data->datos); ?>
	<br />


</div>