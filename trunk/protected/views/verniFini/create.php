<?php
/* @var $this VerniFiniController */
/* @var $model VerniFini */

$this->breadcrumbs=array(
	'Verni Finis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar VerniFini', 'url'=>array('index')),
	array('label'=>'Administrar VerniFini', 'url'=>array('admin')),
);
?>

<h1>Crear VerniFini</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>

<p>
	Para añadir imágenes del vernissage/finissage a una exposición o feria existen dos modos:
	<br><br>
	<b>* Una en una:</b> Seleccionar exposición, seleccionar la imagen (tamaño recomendado: 72 dpi - 1200 x 1200 px, que no pesen más de 1MB), y si se desea colocar la descripción en español y la descripción en inglés.
	<br><br>
	<b>* Masivo</b>: Seleccionar exposición, seleccionar las imágenes (tamaño recomendado: 72 dpi - 1200 x 1200 px, que no pesen más de 1MB), y si se desea colocar la descripción en español y la descripción en inglés en el orden de selección de las imágenes separadas por &lt;br&gt; del siguiente modo
	<br><br>
	Orden de selección de las imágenes: Foto1, Foto2, Foto3
	<br><br>
	Descripciones:
	<br><br>
	Descripción de Foto1&lt;br&gt;<br>
	Descripción de Foto2&lt;br&gt;<br>
	Descripción de Foto3
	<br><br>
	Supongamos que la foto 2 no lleva descripción:
	<br><br>
	Descripción de Foto1&lt;br&gt;<br>
	&lt;br&gt;<br>
	Descripción de Foto3.&lt;br&gt;<br>
</p>