<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div class="row">	
	<div class="col-md-8">
	    <ul class="media-list">
	    	<?php /*$this->widget('application.extensions.addThis', 
	    					array( 'id'=>'id', 'username'=>'username', 'defaultButtonCaption'=>'Share',
	    					 'showDefaultButton'=>true, 'showDefaultButtonCaption'=>true, 'separator'=>'|', 
	    					 'htmlOptions'=>array(), 'linkOptions'=>array(), 
	    					 'showServices'=>array('separator', 'facebook', 'twitter', 'myspace', 'email', 'print'), 'showServicesTitle'=>false, 'config'=>array('ui_language'=>'en'), 'share'=>array()) ); */?>


	    <?php	    
	    	$primero = 1;

	        foreach ($noticias as $noticia)
	        {
				//echo $noticia->titulo;

	        	/*print_r($noticia);
	        	echo "<br><br><br>";*/


	    		if ($primero == 1) {
	                echo "<div class='media-body'>
	                    	<div id = 'fecha_noticias'>";

						    		echo $noticia->fecha;
						    	
		                    	echo"</div><h2 style='font-size:26px;' class='media-heading noti'>".$noticia->titulo."</h2>    
		                    	<div style='text-align:center !important; padding-bottom: 14px; padding-top:6px;'>
		                        ";

										$this->widget('ext.SAImageDisplayer', array(
										    'image' => $noticia->imagen,//'xxx.jpg',
										    'size' => 'grande',
										    'class'=>'media-object',
										    'defaultImage' => 'default.png',
										    'group' => 'noticia',
										));
							    	
							echo "
								</div>
    	                    	<div class='comment more texto' style:'font-weight: 900;'>"
	    	                    	.$noticia->contenido.
            	              		"<br>
                	        	</div>
                    		</div>
	                    
	                    	
	                		";
	                    
	                $primero = 2;
	            }else{
	            	echo "
	                	<li class='media'>
	                    	<a class='pull-left' href='#'>
							";

				
									$this->widget('ext.SAImageDisplayer', array(
									    'image' => $noticia->imagen,//'xxx.jpg',
									    'size' => 'pequena',
									    'defaultImage' => 'default.png',
									    'group' => 'noticia',
									));	    	

							echo "
	                    	</a>
	                    	<div class='media-body'>
		                        <div id = 'fecha_noticias'>";

							    		echo $noticia->fecha;
							    	
		                        echo "</div><h2 class='media-heading noti'>".$noticia->titulo."</h2>
		                        <div class='comment more texto'>"
		                         .$noticia->contenido.
		                      	"</div>
	                      	</div>
	                    </li>
	                    
	                    
		                   ";

	    	    }
	    	    echo "<br>";
	    	    		       $this->widget('application.extensions.addThis', //API: http://support.addthis.com/customer/portal/articles/1337989-overview
					array( 'id'=>'share_noticia_'.$noticia->idnoticia, 'username'=>Yii::app()->user->name, 'defaultButtonCaption'=>Yii::t('social','Compartir'),
						   'showDefaultButton'=>true, 'showDefaultButtonCaption'=>true, 'separator'=>'|',
						   'htmlOptions'=>array('addthis:url'=>Yii::app()->createAbsoluteUrl('noticia/view',array('id'=>$noticia->idnoticia)),'addthis:title'=>$noticia->titulo), 'linkOptions'=>array(), 
						   'showServices'=>array('separator', 'facebook', 'twitter', 'google_plusone_share', 'google_plusone'), 
						   'showServicesTitle'=>false, 'config'=>array('ui_language'=>Yii::app()->language,'data_track_clickback'=>true), 
						   'share'=>array(/*'url'=>Yii::app()->createAbsoluteUrl('noticia/view',array('id'=>$noticia->idnoticia)),'title'=>$noticia->titulo,'descripcion'=>$noticia->contenido*/))); 
echo "<hr>";
	        }
	        ?>    
	         
        </ul>

<?php
/*
        foreach ($noticias as $noticia)
        {
            echo $noticia->link . "\n";
            echo $noticia->fecha . "\n";
            echo $noticia->titulo . "\n";
            echo $noticia->contenido . "\n";

			$this->widget('ext.SAImageDisplayer', array(
			    'image' => $noticia->imagen,//'xxx.jpg',
			    'size' => 'pequena',
			    'defaultImage' => 'default.png',
			    'group' => 'noticia',
			));

			echo "<br><br>"; 
        }
*/
        ?>



        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header"><?php  echo Yii::t('site','Exposiciones | Ferias');?></h3>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive portfolio-item" src="http://placehold.it/500x300" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive portfolio-item" src="http://placehold.it/500x300" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive portfolio-item" src="http://placehold.it/500x300" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive portfolio-item" src="http://placehold.it/500x300" alt="">
                </a>
            </div>

        </div>

	</div>

	<div class="col-md-3 col-md-offset-1">
	    <h4 style="margin-top:0px">ELEMENTAL Proyecto</h4>
	    <p style ="font-size: 13px;">

	    <?php echo $texto->texto;?>
	   <a href="<?php echo Yii::app()->request->baseUrl; ?>/site/quienessomos"><w style="font-size: 11px;"> (<?php echo Yii::t('site','Ver más');?>)</w></a></p>

	   <br>
	    <h4><?php  echo Yii::t('site','Artistas del proyecto');?></h4>
	    <ul style="font-size: 13px; list-style-type: none; padding-left: 0px">
	    	<?php
	    		foreach ($artistas as $artista) {
			    ?>
					<li><a href="<?php echo Yii::app()->createUrl('site/artista', array('id' => $artista->idartista, 'art' => $artista->apellido));?>" class="a_sincolor"><?php echo $artista->nombre.' '.$artista->apellido.'</a><br>';?></li>
				<?php
	    		}
	    		?>
	    </ul>
	</div>

</div>
