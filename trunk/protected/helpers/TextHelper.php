<?php

class TextHelper{
    public static function cleanText($text=""){
        //$text = preg_replace('/[^A-Z0-9]+/i', '-', $text);
        $text = strtolower(trim($text, '-'));

        return $text;
    }

    public static function convertir_fecha($fecha_de_entrada, $idioma){
	list($pre_fecha,$hora) = explode(" ",$fecha_de_entrada);
	$fecha=date('Y-m-d-w',strtotime($pre_fecha));
	list($yyyy,$mm,$dd,$lll) = explode("-",$fecha);
	$semana=array("Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo");
	$week=array("1","2","3","4","5","6","0");
	$dia_semana=str_replace($week,$semana,$lll);
	$hora_salida=date("g:i a",strtotime($hora));
	$numeros=array("01","02","03","04","5","06","07","08","09","10","11","12");
	$meses=array("enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre");
	$meses_en = array("January",	"February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");


	if ($idioma->idioma == Yii::app()->params->idiomas['Español']){ //español
		$mes=str_replace($numeros,$meses,$mm);
		$aux = ltrim($dd, '0');
		if (($aux == "1")){
			$auxdia = $aux."ero";	
		}else{
			$auxdia = $aux;
		}


		$fecha_salida= $auxdia.' de '.$mes.' del '.$yyyy; // 'a las: .$hora_salida;



	}else{//inglés
		$aux = ltrim($dd, '0');
		if (($aux == "1") or ($aux == "21") or ($aux == "31")){
			$auxdia = $aux."st";			
		}else{
			if (($aux == "2") or ($aux == "22")){
				$auxdia = $aux."nd";			
			}else{
				if (($aux == "3") or ($aux == "23")){
					$auxdia = $aux."rd";			
				}else{
					$auxdia = $aux."th";			
				}
			}
		}

		$mes=str_replace($numeros,$meses_en,$mm);
		$fecha_salida= $mes.' '.$auxdia.' '.$yyyy; // 'a las: .$hora_salida
	}

	return $fecha_salida; 
	}
}


?>