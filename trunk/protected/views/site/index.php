<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div class="row">	
	<div class="col-md-8">
	    <ul class="media-list">
	    <?php	    
	    	$primero = 1;
	       $this->widget('application.extensions.addThis', 
	       				array( 'id'=>'id', 'username'=>Yii::app()->user->name, 'defaultButtonCaption'=>Yii::t('social','Compartir'),
	       					   'showDefaultButton'=>true, 'showDefaultButtonCaption'=>true, 'separator'=>'|',
	       					   'htmlOptions'=>array(), 'linkOptions'=>array(), 
	       					   'showServices'=>array('separator', 'facebook', 'twitter', 'google_plusone_share', 'google_plusone'), 
	       					   'showServicesTitle'=>false, 'config'=>array('ui_language'=>Yii::app()->language), 'share'=>array(''))); 
	        foreach ($noticias as $noticia)
	        {
				//echo $noticia->titulo;

	        	/*print_r($noticia);
	        	echo "<br><br><br>";*/

	        	
	    		if ($primero == 1) {
	                echo "
	                    <div class='media-body'>
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
	                    
	                    	<hr>
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
	                    
	                    <hr>
		                   ";
	    	    }
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
	    <p style ="font-size: 13px;">ELEMENTAL se aleja de la clásica relación galería-comisario-artista para plantear la construcción de las exposiciónes de una manera orgánica. Son los propios artistas que participan en el proyecto quienes, en diálogo permanente con la galerista Odalys Sánchez, proponen e incorporan a nuevos artistas al proyecto con el objeto de ampliar el arco narrativo del mismo. Son también los artistas quienes, junto a la galerista, ejercen de comisarios, trazando el planteamiento de la muestra. <a href="sobreElemental.php"><w style="font-size: 11px;"> (Ver más) </w></a></p>
	    <h4><?php  echo Yii::t('site','Artistas del proyecto');?></h4>
	    <ul style="font-size: 13px; list-style-type: none; padding-left: 0px">
	        <li>Kiss Aba Regö</li>

	        <li>Felipe Águila</li>

	        <li>Hugo Alonso</li>

	        <li>Lidzie Alvisa</li>

	        <li>Krisztián Ádám</li>

	        <li>Zoltan Kunckel</li>

	        <li>Llobet & Pons</li>

	        <li>Erik Mátrai</li>

	        <li>Irina Novarese</li>

	        <li>Mabel Poblet</li>

	        <li>Ernesto Rancaño</li>

	        <li>Balázs Sipos</li>

	        <li>Uli Wetsphal</li>                
	    </ul>
	</div>

</div>
