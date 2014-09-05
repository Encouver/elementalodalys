<?php

/**
 * This is the model class for table "elemental.tra_artista".
 *
 * The followings are the available columns in table 'elemental.tra_artista':
 * @property integer $id
 * @property integer $idiomaid
 * @property integer $artistaid
 * @property string $pais
 * @property string $biografia
 *
 * The followings are the available model relations:
 * @property Artista $artista
 * @property Idiomas $idioma
 */
class TraArtista extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'elemental.tra_artista';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idiomaid, artistaid, pais, biografia', 'required'),
			array('idiomaid, artistaid', 'numerical', 'integerOnly'=>true),
			array('pais', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, idiomaid, artistaid, pais, biografia', 'safe', 'on'=>'search'),
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
			'artista' => array(self::BELONGS_TO, 'Artista', 'artistaid'),
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
			'idiomaid' => 'Idiomaid',
			'artistaid' => 'Artistaid',
			'pais' => 'Pais',
			'biografia' => 'Biografia',
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
		$criteria->compare('idiomaid',$this->idiomaid);
		$criteria->compare('artistaid',$this->artistaid);
		$criteria->compare('pais',$this->pais,true);
		$criteria->compare('biografia',$this->biografia,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TraArtista the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
