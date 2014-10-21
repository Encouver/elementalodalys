<?php
/* @var $this ObraController */
/* @var $data Obra */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idobra')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idobra), array('view', 'id'=>$data->idobra)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('idartista')); ?>:</b>
	<?php echo CHtml::encode($data->idartista); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('imagen')); ?>:</b>
	<?php echo '<img src="'.Yii::app()->request->baseUrl.'/images/obra/originals/'.CHtml::encode($data->imagen).'" width=60px>' ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('imagen_thumb')); ?>:</b>
	<?php echo CHtml::encode($data->imagen_thumb); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />


</div>