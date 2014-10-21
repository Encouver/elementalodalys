<?php
/* @var $this VerniFiniController */
/* @var $data VerniFini */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idverni_fini')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idverni_fini), array('view', 'id'=>$data->idverni_fini)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('imagen')); ?>:</b>
	<?php echo '<img src="'.Yii::app()->request->baseUrl.'/images/vernifini/originals/'.CHtml::encode($data->imagen).'" width=60px>' ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('imagen_thumb')); ?>:</b>
	<?php echo CHtml::encode($data->imagen_thumb); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idexposicion')); ?>:</b>
	<?php echo CHtml::encode($data->idexposicion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />


</div>