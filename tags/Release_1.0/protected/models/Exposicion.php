<?php

/**
 * This is the model class for table "elemental.exposicion".
 *
 * The followings are the available columns in table 'elemental.exposicion':
 * @property integer $idexposicion
 * @property string $nombre1
 * @property string $nombre2
 * @property string $lugar
 * @property string $fecha_inicio
 * @property string $fecha_fin
 * @property string $tipo
 * @property string $pais
 *
 * The followings are the available model relations:
 * @property ArtistaExpo[] $artistaExpos
 * @property Audio[] $audios
 * @property Catalogo[] $catalogos
 * @property Conversatorio[] $conversatorios
 * @property ExpoObra[] $expoObras
 * @property Montaje[] $montajes
 * @property Prensa[] $prensas
 * @property TraExposicion[] $traExposicions
 * @property VerniFini[] $verniFinis
 */
class Exposicion extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'exposicion';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nombre1, lugar, fecha_inicio, fecha_fin, tipo', 'required'),
			array('nombre1, nombre2, lugar, pais', 'length', 'max'=>255),
			array('tipo', 'length', 'max'=>10),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idexposicion, nombre1, nombre2, lugar, fecha_inicio, fecha_fin, tipo, pais', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'artistaExpos' => array(self::HAS_MANY, 'ArtistaExpo', 'idexposicion'),
			'audios' => array(self::HAS_MANY, 'Audio', 'idexposicion'),
			'catalogos' => array(self::HAS_MANY, 'Catalogo', 'idexposicion'),
			'conversatorios' => array(self::HAS_MANY, 'Conversatorio', 'idexposicion'),
			'expoObras' => array(self::HAS_MANY, 'ExpoObra', 'idexposicion'),
			'montajes' => array(self::HAS_MANY, 'Montaje', 'idexposicion'),
			'prensas' => array(self::HAS_MANY, 'Prensa', 'idexposicion'),
			'traExposicions' => array(self::HAS_MANY, 'TraExposicion', 'exposicionid'),
			'verniFinis' => array(self::HAS_MANY, 'VerniFini', 'idexposicion'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idexposicion' => 'Idexposicion',
			'nombre1' => 'Nombre1',
			'nombre2' => 'Nombre2',
			'lugar' => 'Lugar',
			'fecha_inicio' => 'Fecha Inicio',
			'fecha_fin' => 'Fecha Fin',
			'tipo' => 'Tipo',
			'pais' => 'Pais',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('idexposicion',$this->idexposicion);
		$criteria->compare('nombre1',$this->nombre1,true);
		$criteria->compare('nombre2',$this->nombre2,true);
		$criteria->compare('lugar',$this->lugar,true);
		$criteria->compare('fecha_inicio',$this->fecha_inicio,true);
		$criteria->compare('fecha_fin',$this->fecha_fin,true);
		$criteria->compare('tipo',$this->tipo,true);
		$criteria->compare('pais',$this->pais,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Exposicion the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
