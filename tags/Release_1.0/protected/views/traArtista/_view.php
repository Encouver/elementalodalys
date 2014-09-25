<?php
/* @var $this TraArtistaController */
/* @var $data TraArtista */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idiomaid')); ?>:</b>
	<?php echo CHtml::encode($data->idiomaid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('artistaid')); ?>:</b>
	<?php echo CHtml::encode($data->artistaid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pais')); ?>:</b>
	<?php echo CHtml::encode($data->pais); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('biografia')); ?>:</b>
	<?php echo CHtml::encode($data->biografia); ?>
	<br />


</div>