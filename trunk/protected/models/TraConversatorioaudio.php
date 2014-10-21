<?php

/**
 * This is the model class for table "tra_conversatorioaudio".
 *
 * The followings are the available columns in table 'tra_conversatorioaudio':
 * @property integer $id
 * @property integer $idiomaid
 * @property integer $conversatorioaudioid
 * @property string $datos
 * @property string $audio_ruta
 */
class TraConversatorioaudio extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tra_conversatorioaudio';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idiomaid, conversatorioaudioid, datos, audio_ruta', 'required'),
			array('idiomaid, conversatorioaudioid', 'numerical', 'integerOnly'=>true),
			array('datos, audio_ruta', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, idiomaid, conversatorioaudioid, datos, audio_ruta', 'safe', 'on'=>'search'),
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
			'conversatorioaudioid' => 'Conversatorioaudioid',
			'datos' => 'Datos',
			'audio_ruta' => 'Audio Ruta',
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
		$criteria->compare('conversatorioaudioid',$this->conversatorioaudioid);
		$criteria->compare('datos',$this->datos,true);
		$criteria->compare('audio_ruta',$this->audio_ruta,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TraConversatorioaudio the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
