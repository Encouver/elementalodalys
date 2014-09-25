<?php
/* @var $this TraTextoController */
/* @var $model TraTexto */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tra-texto-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

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
		<?php echo $form->labelEx($model,'textoid'); ?>
		<?php //echo $form->textField($model,'tipousuario'); >
			echo $form->dropDownList($model, 'textoid', 
			CHtml::listData(Texto::model()->findAll(),'idtexto','lugar'),array('empty' =>'Seleccione'));
		?>
		<?php echo $form->error($model,'textoid'); ?>
	</div>

	<div class="row">
<?php	
$this->widget('ext.ExtEditMe', array(
        'model'=>$model,
        'attribute'=>'texto',
        'width'=>'460',
        'height'=>'250',
        'toolbar'=>array(
            array(
                'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat', 
            ),
            array(
                'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote',
                '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock',
            ),
            array(
                'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo', 
            ),
            array(
                'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak', 'Iframe'
            ),
            array('Styles', 'Format', 'FontSize'

                ),
        )
));
?>

	</div>


	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->