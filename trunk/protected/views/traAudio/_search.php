<?php
/* @var $this TraAudioController */
/* @var $model TraAudio */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idiomaid'); ?>
		<?php echo $form->textField($model,'idiomaid'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'audioid'); ?>
		<?php echo $form->textField($model,'audioid'); ?>
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