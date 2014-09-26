<?php
$this->pageTitle=Yii::app()->name;
?>
<div class="panel-group" id="accordion">

<?php

if ($obras){
				echo '
                  <div class="panel">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                          ';
                          echo Yii::t('site','Obras');
                          echo '                          <span style="font-size:11px;" class="glyphicon x"></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                      <div class="panel-body">

                            <!-- Fotorama -->
<div class="fotorama" data-width="700" data-max-width="100%" data-ratio="500/333" data-fit="contain" data-thumbfit="contain" data-captions="false" data-auto="false" data-nav="thumbs">
							';
								
									foreach ($obras as $obra) {
                    echo "AAAAAAAAAAAAAAAAAAAAAAA;";
										$this->widget('ext.SAImageDisplayer', array(
										    'image' => $obra->imagen,
										    'size' => 'grande',
										    'defaultImage' => 'default.png',
										    'group' => 'obra',
											'othersAttributes' =>array ('data-caption' =>$obra->descripcion),
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
if ($artista){
				echo '
                  <div class="panel">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                          ';
                          echo Yii::t('site','Biografía');
                          echo '                          
                          <span style="font-size:11px;" class="glyphicon x"></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                      <div class="panel-body">'.$artista->biografia.'

 						
							
                      </div>
                    </div>
                  </div>

                  ';
}

if ($prensas){
				  echo '

                  <div class="panel">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
                          ';
                          echo Yii::t('site','Prensa');
                          echo ' 
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
                      <p class="text-muted chiqui">'.Yii::t('site','Publicado el ').TextHelper::convertir_fecha($prensa->fecha, $idioma).'</p>
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
                  echo'<w id="info_expo_nombre">'.$artista->nombre.' '.$artista->apellido;
                  echo '</w><br>
			      <w>'.$artista->pais.'. '.$artista->ano.'<br><br>
                  ';
                ?>
                </div>
</div>

<script>

  $(document).ready(function() {

$('.fotorama')

    .on('fotorama:show', function (e, fotorama) {    

        fotorama.$caption = fotorama.$caption || $(this).next('.fotorama-caption');

        fotorama.$caption.text(fotorama.activeFrame.caption);

    })

    .fotorama();
});
</script>