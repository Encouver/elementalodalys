<?php
/* @var $this ArtistaPrensaController */
/* @var $data ArtistaPrensa */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idartista_prensa')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idartista_prensa), array('view', 'id'=>$data->idartista_prensa)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idartista')); ?>:</b>
	<?php echo CHtml::encode($data->idartista0->nombre)." ".CHtml::encode($data->idartista0->apellido); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idprensa')); ?>:</b>
	<?php echo CHtml::encode($data->idprensa0->titulo); ?>
	<br />


</div>