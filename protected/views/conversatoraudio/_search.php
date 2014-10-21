<?php
/* @var $this ConversatoraudioController */
/* @var $model Conversatoraudio */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idaudio'); ?>
		<?php echo $form->textField($model,'idaudio'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idexposicion'); ?>
		<?php echo $form->textField($model,'idexposicion'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'datos'); ?>
		<?php echo $form->textField($model,'datos',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'audio_ruta'); ?>
		<?php echo $form->textField($model,'audio_ruta',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->