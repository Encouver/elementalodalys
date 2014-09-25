<?php
/* @var $this TextoController */
/* @var $data Texto */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idtexto')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idtexto), array('view', 'id'=>$data->idtexto)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('lugar')); ?>:</b>
	<?php echo CHtml::encode($data->lugar); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('texto')); ?>:</b>
	<?php echo CHtml::encode($data->texto); ?>
	<br />


</div>