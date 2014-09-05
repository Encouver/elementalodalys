<?php

/**
 * This is the model class for table "elemental.expo_obra".
 *
 * The followings are the available columns in table 'elemental.expo_obra':
 * @property integer $idexpo_obra
 * @property integer $idobra
 * @property integer $idexposicion
 *
 * The followings are the available model relations:
 * @property Exposicion $idexposicion0
 * @property Obra $idobra0
 */
class ExpoObra extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'elemental.expo_obra';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idobra, idexposicion', 'required'),
			array('idobra, idexposicion', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idexpo_obra, idobra, idexposicion', 'safe', 'on'=>'search'),
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
			'idobra0' => array(self::BELONGS_TO, 'Obra', 'idobra'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idexpo_obra' => 'Idexpo Obra',
			'idobra' => 'Idobra',
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

		$criteria->compare('idexpo_obra',$this->idexpo_obra);
		$criteria->compare('idobra',$this->idobra);
		$criteria->compare('idexposicion',$this->idexposicion);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return ExpoObra the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
