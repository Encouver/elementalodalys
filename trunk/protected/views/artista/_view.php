<?php
/* @var $this ArtistaController */
/* @var $data Artista */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idartista')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idartista), array('view', 'id'=>$data->idartista)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('apellido')); ?>:</b>
	<?php echo CHtml::encode($data->apellido); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ano')); ?>:</b>
	<?php echo CHtml::encode($data->ano); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pais')); ?>:</b>
	<?php echo CHtml::encode($data->pais); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('biografia')); ?>:</b>
	<?php echo CHtml::encode($data->biografia); ?>
	<br />


</div>