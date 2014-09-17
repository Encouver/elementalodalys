
          
  
<script type="text/javascript">
	  	$(".fotorama")
	    .on("fotorama:show", function (e, fotorama) {    
	        fotorama.$caption = fotorama.$caption || $(this).next(".fotorama-caption");
	        fotorama.$caption.text(fotorama.activeFrame.caption);
	    })
	    .fotorama();
</script>


<?php 


    echo '<!-- Fotorama -->
          <div class="fotorama" data-width="700" data-max-width="100%" data-ratio="500/333" data-fit="cover" data-captions="false" data-auto="false" data-nav="thumbs">
        ';
		
        foreach ($obras as $obra) {
        	
        	if(Yii::app()->sourceLanguage == Yii::app()->language)
        		$descripcion = $obra->descripcion;
        	else
        		$descripcion = TraObra::model()->find('idiomaid=:ididioma AND obraid=:idobra',array(':ididioma'=> $idioma->id, ':idobra'=>$obra->idobra))->descripcion;
        		//$descripcion = $obra->traObras->obraid;
          $this->widget('ext.SAImageDisplayer', array(
              'image' => $obra->imagen,
              'size' => 'grande',
              'defaultImage' => 'default.png',
              'group' => 'obra',
            'othersAttributes' =>array ('data-caption' =>$descripcion),
          ));
        }

    echo '
              </div>
    <!--Caption-->
    <div style="min-height:40px; line-height: 20px; padding-top:10px"  class="fotorama-caption">
    </div>';
?>

