
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo CHtml::encode($this->pageTitle); ?></title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap.css" rel="stylesheet">
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/style.css" rel="stylesheet">


    <!-- Custom CSS -->
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/portfolio-item.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/fotorama.css" rel="stylesheet">
</head>

<body>

<div id="wrap">

    <div class="barra_superior">

    <div class="container">

        <div class="row">

            <div class="col-md-2">
                <img src="images/logoodalys.png" width="80px;">
            </div>
        </div>
    </div>


    </div>

    <div class="container">

        <div class="row">

            <div class="col-md-2">
                <div class="bs-docs-sidebar hidden-xs hidden-sm affix" role="complementary">
                    <img src="images/logonuevo.png" width="130px" ><br><br>
                </div>
            </div>

            <div class= "col-md-10">     
                <div class="visible-xs-block visible-sm-block">
                    <img src="images/logonuevo.png" width="130px" ><br><br>
                </div>
                   
                <nav class="navbar" role="navigation">

                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            
                            <button type="button" class="navbar-default navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                
                            <span class="glyphicon glyphicon-chevron-down"></span>
                            </button>

                        </div>


                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav menuppal">
                                <li>
                                    <a class="menuppal" href="#">Exposiciones | Ferias</a>
                                </li>
                                <li>
                                    <a class="menuppal" href="#">Artistas</a>
                                </li>
                                <li>
                                    <a class="menuppal" href="#">Alianzas</a>
                                </li>
                                <li>
                                    <a class="menuppal" href="#">Quienes somos</a>
                                </li>
                                <li>
                                    <a class="menuppal" href="#">Contacto</a>
                                </li>

                            </ul>
                            
                        </div>
                        
                        <!-- /.navbar-collapse -->
                    <!-- /.container -->
                </nav>
                <div class="visible-xs-block visible-sm-block">
                    <br><br>
                </div>
                   
                <!-- Portfolio Item Row -->
                <div class="row">

                    <div class="col-md-12">

					   <?php echo $content; ?>
					   
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<div id="footer">
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h5>Sobre Elemental</h5>
                <p style="font-size:12px;">ELEMENTAL se aleja de la clásica relación galería-comisario-artista para plantear la construcción de las exposiciónes de una manera orgánica.
                <a href="sobreElemental.php"><w style="font-size: 11px;"> (Ver más) </w></a></p>
                <br>
                <img src="images/logoodalys.png" width="120px;">

            </div>

            <div class="col-md-2">
                <h5>Navega</h5>
                <p style="font-size:12px;">
                    Exposiciones | Ferias <br>
                    Artistas<br>
                    Alianzas<br>
                    Quienes somos<br>
                    Contacto
                </p>

            </div>

            <div class="col-md-2">
                <h5>Redes Sociales</h5>
            <p style="font-size:12px;line-height:30px;">

                    <img src="images/social/Facebook-icon.png" width="25px"> Facebook<br>
                    <img src="images/social/Twitter-icon.png" width="25px"> Twitter<br>
                    <img src="images/social/Youtube-icon.png" width="25px"> Youtube<br>
                    <img src="images/social/Instagram-icon.png" width="25px"> Instagram<br>
                </p>
            </div>

            <div class="col-md-4">
                <h5>Alianzas</h5>
                            <p style="font-size:12px;line-height:40px;">

                <img src="images/logos_alianzas/GI.png" width="80px"><br>
                <img src="images/logos_alianzas/logo_berlin.png" height="36px;">

                <img src="images/logos_alianzas/mome.png" height="22px;">

                </p>
            </div>
        </div>
        <hr class="clara">
        <div class="row">
            <div class="col-md-12">   
                <p class="copyright">Copyright &copy; Your Website 2014</p>
            </div>
        </div>
    </div>
</footer>
</div>

              

<!-- Bootstrap Core JavaScript -->
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

    <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/stickySidebar.js"></script> 
  <!-- Fotorama -->
  <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/fotorama.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/bootstrap.min.js"></script>
<script>
  $(document).ready(function() {
        var showChar = 300;
        var ellipsestext = "...";
        var moretext = "leer más";
        var lesstext = "ocultar";
        $('.more').each(function() {
            var content = $(this).html();
     
            if(content.length > showChar) {
     
                var c = content.substr(0, showChar);
                var h = content.substr(showChar-1, content.length - showChar);
     
                var html = c + '<span class="moreellipses">' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
     
                $(this).html(html);
            }
     
        });
     
        $(".morelink").click(function(){
            if($(this).hasClass("less")) {
                $(this).removeClass("less");
                $(this).html(moretext);
            } else {
                $(this).addClass("less");
                $(this).html(lesstext);
            }
            $(this).parent().prev().toggle();
            $(this).prev().toggle();
            return false;
        });
    



    });

$('.collapse').on('shown.bs.collapse', function(){
$(this).parent().find(".glyphicon").addClass("glyphicon-chevron-down");
}).on('hidden.bs.collapse', function(){
$(this).parent().find(".glyphicon-chevron-down").removeClass("glyphicon-chevron-down");
});


</script>

</body>

</html>
