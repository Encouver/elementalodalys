<div>
	<h2>Español</h2>
	<div>
	<?php $this->renderPartial('_form', array('model'=>$model,'tra_model'=>$tra_model,'obligatorio'=>true)); ?>
	</div>

	<!-- Dependiendo del idioma seleccionado se carga este modelo -->

	<h2>Ingles</h2>
	<div>
	<?php $this->renderPartial('_form', array('model'=>$model,'tra_model'=>$tra_model,'obligatorio'=>false)); ?>
	</div>

</div>