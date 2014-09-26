<?php
/* @var $this ArtistaExpoController */
/* @var $data ArtistaExpo */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idcolectiva_feria')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idcolectiva_feria), array('view', 'id'=>$data->idcolectiva_feria)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idartista')); ?>:</b>
	<?php echo CHtml::encode($data->idartista0->nombre)." ".CHtml::encode($data->idartista0->apellido); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idexposicion')); ?>:</b>
	<?php echo CHtml::encode($data->idexposicion0->nombre1)." ".CHtml::encode($data->idexposicion0->nombre2); ?>

	<br />


</div>