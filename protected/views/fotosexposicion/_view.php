<?php
/* @var $this FotosexposicionController */
/* @var $data Fotosexposicion */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idfotosexposicion')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idfotosexposicion), array('view', 'id'=>$data->idfotosexposicion)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('imagen')); ?>:</b>
	<?php echo '<img src="'.Yii::app()->request->baseUrl.'/images/exposicion/originals/'.CHtml::encode($data->imagen).'" width=60px>' ?>
	<br />


	<b><?php echo CHtml::encode($data->getAttributeLabel('idexposicion')); ?>:</b>
	<?php echo CHtml::encode($data->idexposicion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />


</div>