<?php

/**
 * This is the model class for table "elemental.prensa".
 *
 * The followings are the available columns in table 'elemental.prensa':
 * @property integer $idprensa
 * @property string $fecha
 * @property string $imagen
 * @property string $imagen_thumb
 * @property integer $idexposicion
 * @property string $titulo
 * @property string $contenido
 *
 * The followings are the available model relations:
 * @property ArtistaPrensa[] $artistaPrensas
 * @property Exposicion $idexposicion0
 * @property TraPrensa[] $traPrensas
 */
class Prensa extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'prensa';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('fecha, idexposicion, titulo, contenido', 'required'),
			array('idexposicion', 'numerical', 'integerOnly'=>true),
			array('imagen, imagen_thumb, titulo', 'length', 'max'=>255),
			array('contenido', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idprensa, fecha, imagen, imagen_thumb, idexposicion, titulo, contenido', 'safe', 'on'=>'search'),
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
			'artistaPrensas' => array(self::HAS_MANY, 'ArtistaPrensa', 'idprensa'),
			'idexposicion0' => array(self::BELONGS_TO, 'Exposicion', 'idexposicion'),
			'traPrensas' => array(self::HAS_MANY, 'TraPrensa', 'prensaid'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idprensa' => 'Idprensa',
			'fecha' => 'Fecha',
			'imagen' => 'Imagen',
			'imagen_thumb' => 'Imagen Thumb',
			'idexposicion' => 'Idexposicion',
			'titulo' => 'Titulo',
			'contenido' => 'Contenido',
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

		$criteria->compare('idprensa',$this->idprensa);
		$criteria->compare('fecha',$this->fecha,true);
		$criteria->compare('imagen',$this->imagen,true);
		$criteria->compare('imagen_thumb',$this->imagen_thumb,true);
		$criteria->compare('idexposicion',$this->idexposicion);
		$criteria->compare('titulo',$this->titulo,true);
		$criteria->compare('contenido',$this->contenido,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Prensa the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
