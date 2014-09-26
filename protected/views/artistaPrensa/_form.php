<?php
/* @var $this ArtistaPrensaController */
/* @var $model ArtistaPrensa */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'artista-prensa-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idartista'); ?>
		<?php //echo $form->textField($model,'tipousuario'); >
			echo $form->dropDownList($model, 'idartista', 
			CHtml::listData(Artista::model()->findAll(),'idartista','nombre'),array('empty' =>'Seleccione'));
		?>
		<?php echo $form->error($model,'idartista'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'idprensa'); ?>
		<?php //echo $form->textField($model,'tipousuario'); >
			echo $form->dropDownList($model, 'idprensa', 
			CHtml::listData(Prensa::model()->findAll(),'idprensa','titulo'),array('empty' =>'Seleccione'));
		?>
		<?php echo $form->error($model,'idprensa'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->