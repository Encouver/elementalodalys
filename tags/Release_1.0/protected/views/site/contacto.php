<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form CActiveForm */

$this->pageTitle=Yii::app()->name . ' - Contact Us';
$this->breadcrumbs=array(
	'Contact',
);
?>
<BR>
<div class="row">
<div class="col-md-6">
		<?php if(Yii::app()->user->hasFlash('contact')): ?>

			<div class="flash-success">
				<?php echo Yii::app()->user->getFlash('contact'); ?>
			</div>

		<?php else: ?>

			<p class="texto">
				<?php echo Yii::t('site','Si desea ponerse en contacto con nosotros, por favor complete el siguiente formulario. Gracias.');?>
			</p>

			<div class="form">

				<?php $form=$this->beginWidget('CActiveForm', array(
					'id'=>'contact-form',
					'enableClientValidation'=>true,
					'clientOptions'=>array(
						'validateOnSubmit'=>true,
					),
				)); ?>
					<?php /*
						<p class="hint"><?php echo Yii::t('site','Campos con ');?><span class="required">*</span> <?php echo Yii::t('site','son requeridos.');?></p>

						 $form->errorSummary($model); */?>
					<br>
					<div class="form-group">	
					   			<?php echo $form->textField($model,'name', array('placeholder'=>Yii::t('site', 'Nombre '),  'style'=>'width:316px;')); ?>
				    			<?php echo $form->error($model,'name', array('class'=>'error_contact')); ?>
					</div>

					<div class="form-group">	
							   <?php echo $form->textField($model,'email', array('placeholder'=>Yii::t('site', 'Correo '), 'style'=>'width:316px;')); ?>
						    	<?php echo $form->error($model,'email', array('class'=>'error_contact')); ?>
					</div>

					<div class="form-group">
							   <?php echo $form->textField($model,'subject', array('placeholder'=>Yii::t('site', 'Asunto '), 'style'=>'width:316px;','maxlength'=>'128')); ?>
						    	<?php echo $form->error($model,'subject', array('class'=>'error_contact')); ?>
					</div>

					<div class="form-group">

							   <?php echo $form->textArea($model,'body',array('placeholder'=>Yii::t('site', 'Mensaje '),'rows'=>6,'cols'=>'42')); ?>
						    	<?php echo $form->error($model,'body', array('class'=>'error_contact')); ?>
					</div>


					<div class="form-group">
						<?php if(CCaptcha::checkRequirements()): ?>
						
					
									<?php echo $form->textField($model,'verifyCode', array( 'style'=>'width:316px;','placeholder'=>Yii::t('site', 'Introduce las letras de la imagen de abajo'))); ?><br>

									<p class="hint"><?php $this->widget('CCaptcha'); ?></p>
									
									<p class="hint">
										<?php echo $form->error($model,'verifyCode', array('class'=>'error_contact')); ?>
									</p>
						<?php endif; ?>
					</div>

					<div class="form-group">
					  <?php echo CHtml::submitButton(Yii::t('site','Enviar'), array('class'=>'btn', 'style'=>'width:316px')); ?>
					</div>


				<?php $this->endWidget(); ?>

			</div><!-- form -->
		


			<?php endif; ?>	


</div>
<div class="col-md-5 col-md-offset-1">

<?php
if ($direcciones) {


echo $direcciones->texto;
}
?>


</div>

</div>