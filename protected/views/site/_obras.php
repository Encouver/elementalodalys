
                        <?php                            
                        /*	echo CHtml::ajaxLink(
                        	    '<div id="req_res">
                        	    Test request',          // the link body (it will NOT be HTML-encoded.)
                        	    array('site/reqTest01'),  // the URL for the AJAX request. If empty, it is assumed to be the current URL.
                        	    array(
                        	        'update'=>'#req_res'
                        	    ), array('update'=>'#forAjaxRefresh')
                        	);
                        	 
                        	echo '...</div>';*/
                        ?>
                      
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
                            <!-- Fotorama 
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
                      
                            <p style="line-height: 20px; padding-top:10px" class="fotorama-caption"></p>-->
