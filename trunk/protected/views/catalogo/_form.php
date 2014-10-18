<?php
/* @var $this CatalogoController */
/* @var $model Catalogo */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'catalogo-form',
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
		<?php echo $form->labelEx($model,'idexposicion'); ?>
		<?php //echo $form->textField($model,'tipousuario'); >
			echo $form->dropDownList($model, 'idexposicion', 
			CHtml::listData(Exposicion::model()->findAll(),'idexposicion','nombre1'),array('empty' =>'Seleccione'));
		?>
		<?php echo $form->error($model,'idexposicion'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'portada'); ?>
		<?php echo $form->fileField($model,'portada'); ?>
		<?php echo $form->error($model,'portada'); ?>
	</div>

	<!--<div class="row">
		<?php echo $form->labelEx($model,'portada_thumb'); ?>
		<?php echo $form->textField($model,'portada_thumb',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'portada_thumb'); ?>
	</div>-->

	<div class="row">
		<?php echo $form->labelEx($model,'pdf'); ?>
		<?php echo $form->fileField($model,'pdf'); ?>
		<?php echo $form->error($model,'pdf'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'datos'); ?>
		<?php echo $form->dropDownList($model, 'datos', 
              array('1' => 'Español', '2' => 'Inglés', '3' => 'Alemán'),
              array('empty' => 'Selecciona idioma del catálogo'));
        ?>
		<?php echo $form->error($model,'datos'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Crear' : 'Guardar'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->