<?php
/* @var $this TraArtistaController */
/* @var $model TraArtista */
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
		<?php echo $form->label($model,'artistaid'); ?>
		<?php echo $form->textField($model,'artistaid'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pais'); ?>
		<?php echo $form->textField($model,'pais',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'biografia'); ?>
		<?php echo $form->textArea($model,'biografia',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->