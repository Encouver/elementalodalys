<?php
/* @var $this ConversatorioController */
/* @var $data Conversatorio */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idconversatorio')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idconversatorio), array('view', 'id'=>$data->idconversatorio)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('link')); ?>:</b>
	<?php echo CHtml::encode($data->link); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idexposicion')); ?>:</b>
	<?php echo CHtml::encode($data->idexposicion); ?>
	<br />


</div>