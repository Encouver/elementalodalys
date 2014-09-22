<?php

/**
 * This is the model class for table "elemental.tra_exposicion".
 *
 * The followings are the available columns in table 'elemental.tra_exposicion':
 * @property integer $id
 * @property string $pais
 * @property integer $exposicionid
 * @property integer $idiomaid
 *
 * The followings are the available model relations:
 * @property Exposicion $exposicion
 * @property Idiomas $idioma
 */
class TraExposicion extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'elemental.tra_exposicion';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('pais, exposicionid, idiomaid', 'required'),
			array('exposicionid, idiomaid', 'numerical', 'integerOnly'=>true),
			array('pais', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, pais, exposicionid, idiomaid', 'safe', 'on'=>'search'),
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
			'exposicion' => array(self::BELONGS_TO, 'Exposicion', 'exposicionid'),
			'idioma' => array(self::BELONGS_TO, 'Idiomas', 'idiomaid'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'pais' => 'Pais',
			'exposicionid' => 'Exposición',
			'idiomaid' => 'Idioma',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('pais',$this->pais,true);
		$criteria->compare('exposicionid',$this->exposicionid);
		$criteria->compare('idiomaid',$this->idiomaid);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TraExposicion the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
