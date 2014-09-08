<?php

/**
 * This is the model class for table "elemental.obra".
 *
 * The followings are the available columns in table 'elemental.obra':
 * @property integer $idobra
 * @property integer $idartista
 * @property string $imagen
 * @property string $imagen_thumb
 *
 * The followings are the available model relations:
 * @property ExpoObra[] $expoObras
 * @property Artista $idartista0
 * @property Idiomas[] $idiomases
 */
class Obra extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'elemental.obra';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idartista, imagen, imagen_thumb', 'required'),
			array('idartista', 'numerical', 'integerOnly'=>true),
			array('imagen, imagen_thumb', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idobra, idartista, imagen, imagen_thumb', 'safe', 'on'=>'search'),
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
			'expoObras' => array(self::HAS_MANY, 'ExpoObra', 'idobra'),
			'idartista0' => array(self::BELONGS_TO, 'Artista', 'idartista'),
			'idiomases' => array(self::MANY_MANY, 'Idiomas', 'tra_obra(obraid, idiomaid)'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idobra' => 'Idobra',
			'idartista' => 'Idartista',
			'imagen' => 'Imagen',
			'imagen_thumb' => 'Imagen Thumb',
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

		$criteria->compare('idobra',$this->idobra);
		$criteria->compare('idartista',$this->idartista);
		$criteria->compare('imagen',$this->imagen,true);
		$criteria->compare('imagen_thumb',$this->imagen_thumb,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Obra the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
