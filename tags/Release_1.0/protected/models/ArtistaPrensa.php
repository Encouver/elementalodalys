<?php

/**
 * This is the model class for table "elemental.artista_prensa".
 *
 * The followings are the available columns in table 'elemental.artista_prensa':
 * @property integer $idartista_prensa
 * @property integer $idartista
 * @property integer $idprensa
 *
 * The followings are the available model relations:
 * @property Artista $idartista0
 * @property Prensa $idprensa0
 */
class ArtistaPrensa extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'artista_prensa';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idartista, idprensa', 'required'),
			array('idartista, idprensa', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idartista_prensa, idartista, idprensa', 'safe', 'on'=>'search'),
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
			'idartista0' => array(self::BELONGS_TO, 'Artista', 'idartista'),
			'idprensa0' => array(self::BELONGS_TO, 'Prensa', 'idprensa'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idartista_prensa' => 'Idartista Prensa',
			'idartista' => 'Idartista',
			'idprensa' => 'Idprensa',
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

		$criteria->compare('idartista_prensa',$this->idartista_prensa);
		$criteria->compare('idartista',$this->idartista);
		$criteria->compare('idprensa',$this->idprensa);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return ArtistaPrensa the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
