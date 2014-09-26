<?php
/* @var $this ArtistaExpoController */
/* @var $model ArtistaExpo */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idcolectiva_feria'); ?>
		<?php echo $form->textField($model,'idcolectiva_feria'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idartista'); ?>
		<?php echo $form->textField($model,'idartista'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idexposicion'); ?>
		<?php echo $form->textField($model,'idexposicion'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->