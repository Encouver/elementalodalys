<?php
/* @var $this ExposicionController */
/* @var $model Exposicion */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'exposicion-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Campos con <span class="required">*</span> son requeridos.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'nombre1'); ?>
		<?php echo $form->textField($model,'nombre1',array('size'=>30,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'nombre1'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nombre2'); ?>
		<?php echo $form->textField($model,'nombre2',array('size'=>30,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'nombre2'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'lugar'); ?>
		<?php echo $form->textField($model,'lugar',array('size'=>30,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'lugar'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fecha_inicio'); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiDatePicker',array(
	    'attribute' => 'fecha_inicio',
		'name'=>'fecha_inicio',
		'model' => $model,
	    //'flat'=>true,//remove to hide the datepicker
	    'options'=>array(
	        'dateFormat' => 'yy-mm-dd',
	        'showAnim'=>'slide',//'slide','fold','slideDown','fadeIn','blind','bounce','clip','drop'
	        'changeMonth'=>true,
	        'changeYear'=>true,
	        'yearRange'=>'2000:2099',
	        'minDate' => '2000-01-01',      // minimum date
	        'maxDate' => '2099-12-31',      // maximum date
		 	'constrainInput' => 'true',
			'lenguage' => 'es',
			
	    ),
	    'htmlOptions'=>array(
	        'style'=>''
	    ),
	));
		
		?>
		<?php echo $form->error($model,'fecha_inicio'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fecha_fin'); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiDatePicker',array(
	    'attribute' => 'fecha_fin',
		'name'=>'fecha_fin',
		'model' => $model,
	    //'flat'=>true,//remove to hide the datepicker
	    'options'=>array(
	        'dateFormat' => 'yy-mm-dd',
	        'showAnim'=>'slide',//'slide','fold','slideDown','fadeIn','blind','bounce','clip','drop'
	        'changeMonth'=>true,
	        'changeYear'=>true,
	        'yearRange'=>'2000:2099',
	        'minDate' => '2000-01-01',      // minimum date
	        'maxDate' => '2099-12-31',      // maximum date
		 	'constrainInput' => 'true',
			'lenguage' => 'es',
			
	    ),
	    'htmlOptions'=>array(
	        'style'=>''
	    ),
	));
		
		?>
		<?php echo $form->error($model,'fecha_fin'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tipo'); ?>
		<?php echo $form->dropDownList($model, 'tipo', 
              array('1' => 'Feria', '2' => 'Individual', '3' => 'Colectiva'),
              array('empty' => 'Tipo de feria'));
        ?>
		<?php echo $form->error($model,'tipo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pais'); ?>
		<?php echo $form->textField($model,'pais',array('size'=>30,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'pais'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Crear' : 'Guardar'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->