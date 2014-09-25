<?php
/* @var $this SubscripcionController */
/* @var $model Subscripcion */
/* @var $form CActiveForm */
?>
<h4 style="margin-top:0px">¡Suscríbete!</h4>
<p style ="font-size: 12px;">
Recibe información de ELEMENTAL Proyecto en tu correo electrónico





<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'subscripcion-form',
	'enableAjaxValidation'=>false,
)); ?>



		<?php echo $form->textField($model,'correo',array('maxlength'=>255, 'class'=>'form-control input-sm', 'placeholder'=>'mail@domain.com', 'style'=>'width:164px')); ?>

		<?php echo CHtml::submitButton($model->isNewRecord ? Yii::t('site', 'Subscribirme') : 'Save', array('class' => 'btn btn-sm', 'style'=>'width:164px')); ?>

<!--		<?php echo $form->error($model,'correo'); ?>-->

<?php $this->endWidget(); ?>

</div><!-- form -->
