<?php

/**
 * This is the model class for table "elemental.catalogo".
 *
 * The followings are the available columns in table 'elemental.catalogo':
 * @property integer $idcatalogo
 * @property integer $idexposicion
 * @property string $portada
 * @property string $portada_thumb
 *
 * The followings are the available model relations:
 * @property Exposicion $idexposicion0
 * @property Idiomas[] $idiomases
 */
class Catalogo extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'elemental.catalogo';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idexposicion, portada, portada_thumb', 'required'),
			array('idexposicion', 'numerical', 'integerOnly'=>true),
			array('portada, portada_thumb', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idcatalogo, idexposicion, portada, portada_thumb', 'safe', 'on'=>'search'),
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
			'idexposicion0' => array(self::BELONGS_TO, 'Exposicion', 'idexposicion'),
			'idiomases' => array(self::MANY_MANY, 'Idiomas', 'tra_catalogo(catalogoid, idiomaid)'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idcatalogo' => 'Idcatalogo',
			'idexposicion' => 'Idexposicion',
			'portada' => 'Portada',
			'portada_thumb' => 'Portada Thumb',
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

		$criteria->compare('idcatalogo',$this->idcatalogo);
		$criteria->compare('idexposicion',$this->idexposicion);
		$criteria->compare('portada',$this->portada,true);
		$criteria->compare('portada_thumb',$this->portada_thumb,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Catalogo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
