<?php
/* @var $this ObraController */
/* @var $model Obra */

$this->breadcrumbs=array(
	'Obras'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Obra', 'url'=>array('index')),
	array('label'=>'Administrar Obra', 'url'=>array('admin')),
);
?>

<h1>Crear Obra</h1>

	<?php $this->renderPartial('_form', array('model'=>$model)); ?>

<p>
	Para añadir obras a una exposición o feria existen dos modos:
	<br><br>
	<b>* Una en una:</b> Seleccionar artista, seleccionar exposición, seleccionar la imagen (tamaño recomendado: 72 dpi - 1200 x 1200 px, que no pesen más de 1MB), colocar la descripción en español y la descripción en inglés.
	<br><br>
	<b>* Masivo</b> (de un solo artista y de una sola exposición): Seleccionar artista, seleccionar exposición, seleccionar las imágenes (tamaño recomendado: 72 dpi - 1200 x 1200 px), colocar la descripción en español y la descripción en inglés en el orden de selección de las imágenes separadas por &lt;br&gt; del siguiente modo
	<br><br>
	Orden de selección de las imágenes: Obra1, Obra2, Obra3<br><br>
	Título1 ejemplo. Año ejemplo1. Técnica ejemplo1. etc.&lt;br&gt;
	Título2 ejemplo. Año ejemplo2. Técnica ejemplo2. etc.&lt;br&gt;
	Título3 ejemplo. Año ejemplo3. Técnica ejemplo3. etc.

</p>
