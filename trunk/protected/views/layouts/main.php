<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<div class="container" id="page">

	<div id="header">
		<div id="logo" style="height:45px"><div style="float:left"><a href="<?php echo Yii::app()->request->baseUrl; ?>/site/indexadmin"><img width="160px" src="<?php echo Yii::app()->request->baseUrl; ?>/images/logonuevo.png"/></a></div>
		
		<div style="float:right"><img width="160px" src="<?php echo Yii::app()->request->baseUrl; ?>/images/log.png"></div></div>
	</div><!-- header -->

	<div id="mainmenu">
		<?php $this->widget('zii.widgets.CMenu',array(
		  'activeCssClass'=>'active',

			'items'=>array(
				array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),

				array('label'=>'Noticia', 'url'=>array('noticia/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Artista', 'url'=>array('artista/index'), 'visible'=>!Yii::app()->user->isGuest),


				array('label'=>'Expo/Feria', 'url'=>array('exposicion/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Obra', 'url'=>array('obra/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Catálogo', 'url'=>array('catalogo/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Montaje', 'url'=>array('montaje/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Exposición fotos', 'url'=>array('fotosexposicion/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Conversatorio-link', 'url'=>array('conversatorio/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Conversatorio-fotos', 'url'=>array('conversatorioFotos/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Conversatorio-audio', 'url'=>array('conversatoraudio/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'VerniFini/Stand', 'url'=>array('verniFini/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Audio Expo-vernifini', 'url'=>array('audio/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Prensa', 'url'=>array('prensa/index'), 'visible'=>!Yii::app()->user->isGuest),

				array('label'=>'T.Curatorial', 'url'=>array('textocuratorial/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Textos', 'url'=>array('texto/index'), 'visible'=>!Yii::app()->user->isGuest),

				array('label'=>'Usuarios', 'url'=>array('usuarios/index'), 'visible'=>!Yii::app()->user->isGuest),
//				array('label'=>'Idiomas', 'url'=>array('idiomas/index'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'Salir('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)

			),

		)); ?>




	</div><!-- mainmenu -->

	<?php
		/*
		if(isset($this->breadcrumbs)):?>
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif
	*/
	?>
	

	<?php echo $content; ?>





	<div class="clear"></div>
	<div style="padding-left:20px"><a target="_blank" href="<?php echo Yii::app()->request->baseUrl; ?>">Ir al site de Elemental</a></div>
	<div id="footer">
		Copyright &copy; <?php echo date('Y'); ?> by Elemental Proyecto.<br/>
		All Rights Reserved.<br/>
		<?php echo Yii::powered(); ?>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
