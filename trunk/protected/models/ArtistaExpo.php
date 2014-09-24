<?php

/**
 * This is the model class for table "elemental.artista_expo".
 *
 * The followings are the available columns in table 'elemental.artista_expo':
 * @property integer $idcolectiva_feria
 * @property integer $idartista
 * @property integer $idexposicion
 *
 * The followings are the available model relations:
 * @property Exposicion $idexposicion0
 * @property Artista $idartista0
 */
class ArtistaExpo extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'artista_expo';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idartista, idexposicion', 'required'),
			array('idartista, idexposicion', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idcolectiva_feria, idartista, idexposicion', 'safe', 'on'=>'search'),
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
			'idartista0' => array(self::BELONGS_TO, 'Artista', 'idartista'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idcolectiva_feria' => 'Idcolectiva Feria',
			'idartista' => 'Idartista',
			'idexposicion' => 'Idexposicion',
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

		$criteria->compare('idcolectiva_feria',$this->idcolectiva_feria);
		$criteria->compare('idartista',$this->idartista);
		$criteria->compare('idexposicion',$this->idexposicion);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return ArtistaExpo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
