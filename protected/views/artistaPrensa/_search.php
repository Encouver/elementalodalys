<?php
/* @var $this ArtistaPrensaController */
/* @var $model ArtistaPrensa */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idartista_prensa'); ?>
		<?php echo $form->textField($model,'idartista_prensa'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idartista'); ?>
		<?php echo $form->textField($model,'idartista'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idprensa'); ?>
		<?php echo $form->textField($model,'idprensa'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->