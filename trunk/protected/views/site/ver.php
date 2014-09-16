<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;

//
//		print_r($artistas);
/*		foreach ($artistas as $artista) {
			echo $artista->artista->nombre;
			echo "<br>";
		}
*/
//echo '<h1>'.$catalogo->portada.'</h1>';

?>

                <div class="panel-group" id="accordion">
                  <div class="panel">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                          
                          Obras
                          <span style="font-size:11px;" class="glyphicon x"></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse">
                      <div class="panel-body">
                        <div class="row">            
                          <div class="col-md-2">
                          	<?php
                          		foreach ($artistas as $artista) {
                          			echo $artista->nombre." ".$artista->apellido."<br>";
                          		}
                          	?>
                          </div>
                          <div class="col-md-10">
<?php                            
	echo CHtml::ajaxLink(
	    '<div id="req_res">
	    Test request',          // the link body (it will NOT be HTML-encoded.)
	    array('site/reqTest01'),  // the URL for the AJAX request. If empty, it is assumed to be the current URL.
	    array(
	        'update'=>'#req_res'
	    ), array('update'=>'#forAjaxRefresh')
	);
	 
	echo '...</div>';
?>

                            <!-- Fotorama -->
                            <div class="fotorama" data-width="700" data-max-width="100%" data-ratio="500/333" data-fit="cover" data-captions="false" data-auto="false" data-nav="thumbs">
                              <img src="http://s.fotorama.io/okonechnikov/1-lo.jpg" data-caption="fffffdfnsadfjknsafnalskmflaksmdf asfdnjoasjfoaksfd dasfnoasjfdñasjfoasfi sdfjoasñjdfasjdfñoajsdfiajsfd dsafjasodfijasofiñjafd">
                              <img src="http://s.fotorama.io/okonechnikov/2-lo.jpg" data-caption="">
                              <img src="http://s.fotorama.io/okonechnikov/9-lo.jpg" data-caption="MKMKMKMKkdmf fsdkjsldfm dfkmskdflmsdf sdfmksmfdk dskfmskdmfksdf ksdmfks dfmd fkmdf f sdfmsdfmf skfmdksmf sfmskmfksfm skfmskfmksdfm skfmksmfksdmfsd sdmksmfksfmdksdfmfd sdmfksdmkdfms dsmfskmfksmfksmfksmfsd fmskfmskmfksmf sdfkmskfmsdkfmskmsfdmf sdmfskmksfmdsfmsdfkmsfdkm kmfsdkmsfkmfdskmfkmfkmdfs.">
                              <img src="http://s.fotorama.io/okonechnikov/6-lo.jpg" data-caption="">
                              <img src="http://s.fotorama.io/okonechnikov/5-lo.jpg"data-caption="One">
                              <img src="http://s.fotorama.io/okonechnikov/1-lo.jpg" data-caption="fffffdfnsadfjknsafnalskmflaksmdf asfdnjoasjfoaksfd dasfnoasjfdñasjfoasfi sdfjoasñjdfasjdfñoajsdfiajsfd dsafjasodfijasofiñjafd">
                              <img src="http://s.fotorama.io/okonechnikov/2-lo.jpg" data-caption="">
                              <img src="http://s.fotorama.io/okonechnikov/9-lo.jpg" data-caption="MKMKMKMKkdmf fsdkjsldfm dfkmskdflmsdf sdfmksmfdk dskfmskdmfksdf ksdmfks dfmd fkmdf f sdfmsdfmf skfmdksmf sfmskmfksfm skfmskfmksdfm skfmksmfksdmfsd sdmksmfksfmdksdfmfd sdmfksdmkdfms dsmfskmfksmfksmfksmfsd fmskfmskmfksmf sdfkmskfmsdkfmskmsfdmf sdmfskmksfmdsfmsdfkmsfdkm kmfsdkmsfkmfdskmfkmfkmdfs.">
                              <img src="http://s.fotorama.io/okonechnikov/6-lo.jpg" data-caption="">
                              <img src="http://s.fotorama.io/okonechnikov/5-lo.jpg"data-caption="One">
                            </div>
                      
                            <p style="line-height: 20px; padding-top:10px" class="fotorama-caption"></p>


                          </div>

                        </div>
                      </div>
                    </div>
                  </div>
<?php
if ($catalogo){
echo '
                  <div class="panel">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                          Catálogo
                          <span style="font-size:11px;" class="glyphicon x"></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                      <div class="panel-body">
                        
                        <div class="row">
                          <div class="col-md-4 pull-bottom">
';

										$this->widget('ext.SAImageDisplayer', array(
										    'image' => $catalogo[0]->portada,
										    'size' => 'pequena',
										    'class'=>'img-responsive',
										    'defaultImage' => 'default.png',
										    'group' => 'catalogo',
										));

echo '
                          </div>
                          <div class="col-md-4 pull-bottom">';
							foreach ($catalogo as $cat) {
							                            	# code...
							                                                        
                            echo'<p id="catalogo_download"><a href="'.Yii::app()->request->baseUrl.'/'.$cat->pdf.'" target="_blank">'.Yii::t('site','Ver o descargar catálogo - ').Yii::t('site',$cat->datos).'</a></p>';
                            }

							echo '	                            
                          </div>

                        </div>

                      </div>
                    </div>
                  </div>
';
}
?>

<?php
if ($montajes){
				echo '
                  <div class="panel">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                          Montaje
                          <span style="font-size:11px;" class="glyphicon x"></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                      <div class="panel-body">

                            <!-- Fotorama -->
                            <div class="fotorama" data-width="700" data-max-width="100%" data-ratio="500/333" data-fit="cover" data-captions="false" data-auto="false" data-nav="thumbs">
							';
								
									foreach ($montajes as $montaje) {
										$this->widget('ext.SAImageDisplayer', array(
										    'image' => $montaje->imagen,
										    'size' => 'previa',
										    'defaultImage' => 'default.png',
										    'group' => 'montaje',
											'othersAttributes' =>array ('data-caption' =>$montaje->descripcion),
										));
									}

							echo '
		                    </div>
							<!--Caption-->
							<div style="min-height:40px; line-height: 20px; padding-top:10px"  class="fotorama-caption">
							</div>
							
                      </div>
                    </div>
                  </div>

                  ';
}
?>

<?php
if ($vernifinis){
				echo '
                  <div class="panel">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                          Vernissage / Finissage
                          <span style="font-size:11px;" class="glyphicon x"></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse vf" >
                      <div class="panel-body">

                            <div class="fotorama" data-width="700" data-max-width="100%" data-ratio="500/333" data-fit="cover" data-captions="false" data-auto="false" data-nav="thumbs">
                            ';
								
									foreach ($vernifinis as $vernifini) {
										$this->widget('ext.SAImageDisplayer', array(
										    'image' => $vernifini->imagen,
										    'size' => 'previa',
										    'defaultImage' => 'default.png',
										    'group' => 'montaje',
											'othersAttributes' =>array ('data-caption' =>$vernifini->descripcion),
										));
									}

							echo '
		                    </div>
							<!--Caption-->
							<div style="min-height:40px; line-height: 20px; padding-top:10px"  class="fotorama-caption">
							</div>

                     
                          <br>
                          ';
						if ($audio){

	            			echo '
	                          <div class="row">
	                          ';

	                           echo '
	                              <div class="col-md-1"> 
	                                <audio id="myAudio"
	                                 <source src="'.Yii::app()->request->baseUrl.'/'.$audio->audio_ruta.'"
	                                         type="audio/mp3">
	                                 Your user agent does not support the HTML5 Audio element.
	                                </audio>
	                                  <span style="font-size:20px;" id="audio" class="glyphicon glyphicon-volume-up" type="button" onclick="aud_play_pause()"></span>

	                              </div>
	                              <div class="col-md-6 datos_audio">'.
	                              	$audio->datos.'
	                              </div>
	                          </div>
	                          ';
                    	}
                    
                    	echo '
                      </div>
                    </div>
                  </div>

                  	';
}                  	
?>


<?php
if ($conversatorios){
	echo '
                  <div class="panel">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
                          Conversatorio
                          <span style="font-size:11px;" class="glyphicon x"></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse">
                      <div class="panel-body">';
                        

                        foreach ($conversatorios as $conversatorio) {
                        	                    
	                        echo '
	                        <div class="embed-responsive embed-responsive-16by9">
							';	
								//http://www.yiiframework.com/extension/yiitube/
								$this->widget('ext.Yiitube', array('v' => $conversatorio->link,'size'=>'small'));
							
	                        echo '    
	                        </div>
	                        <br>
	                        ';

                    	}
                      echo '
                      </div>
                    </div>
                  </div>
                  ';
}
?>

<?php
if ($prensas){
				  echo '

                  <div class="panel">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
                          Prensa
                          <span style="font-size:11px;" class="glyphicon x"></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseSix" class="panel-collapse collapse">
                      <div class="panel-body">
					    ';
					    foreach ($prensas as $prensa) {
					    	# code...

					    	echo '
							    <div class="media">
							';
							if ($prensa->imagen){
								echo'
							      <a class="pull-left" href="#">
							    ';
										$this->widget('ext.SAImageDisplayer', array(
										    'image' => $prensa->imagen,
										    'size' => 'previa',
										    'class' => 'media-object',
										    'defaultImage' => 'default.png',
										    'group' => 'prensa',
										));


							      echo '
							      </a>
							    ';
							}
							echo '
							      <div class="media-body">
							        <h5 class="media-heading">'.$prensa->titulo.'</h5>
							        <p class="prensa comment more texto">'.$prensa->contenido.'</p>
							      </div>
							    </div>
							    
					    	';
					    }

					    echo '

                      </div>
                    </div>
                  </div>
                </div>
                ';

}
?>
                <hr>
              <div id="info_expo">
                <?php

                  echo'<w id="info_expo_nombre"> Nombre de la Expo';
/*                  if ($c['nombre2']){
                    echo ' | '.$c['nombre2'];
                  }*/
                  echo '</w>
                  <br> lugar <br> fecha al fecha</div>
                  ';
                ?>
                </div>

