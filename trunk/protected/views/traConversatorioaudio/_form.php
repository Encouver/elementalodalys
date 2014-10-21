<?php
/* @var $this TraConversatorioaudioController */
/* @var $model TraConversatorioaudio */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tra-conversatorioaudio-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

	<p class="note">Campos con <span class="required">*</span> son requeridos.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idiomaid'); ?>
		<?php //echo $form->textField($model,'tipousuario'); >
			echo $form->dropDownList($model, 'idiomaid', 
			CHtml::listData(Idiomas::model()->findAll(),'id','nombre'),array('empty' =>'Seleccione'));
		?>
		<?php echo $form->error($model,'idiomaid'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'conversatorioaudioid'); ?>
		<?php //echo $form->textField($model,'tipousuario'); >
			echo $form->dropDownList($model, 'conversatorioaudioid', 
			CHtml::listData(Conversatoraudio::model()->findAll(),'idaudio','datos'),array('empty' =>'Seleccione'));
		?>
		<?php echo $form->error($model,'conversatorioaudioid'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'datos'); ?>
		<?php echo $form->textField($model,'datos',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'datos'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'audio_ruta'); ?>
		<?php echo $form->fileField($model,'audio_ruta',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'audio_ruta'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Creae' : 'Guardar'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->