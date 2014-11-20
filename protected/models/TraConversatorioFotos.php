<?php

/**
 * This is the model class for table "tra_conversatorio_fotos".
 *
 * The followings are the available columns in table 'tra_conversatorio_fotos':
 * @property integer $id
 * @property integer $idiomaid
 * @property integer $conversatorio_fotosid
 * @property string $descripcion
 */
class TraConversatorioFotos extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tra_conversatorio_fotos';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idiomaid, conversatorio_fotosid, descripcion', 'required'),
			array('idiomaid, conversatorio_fotosid', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, idiomaid, conversatorio_fotosid, descripcion', 'safe', 'on'=>'search'),
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
			'idioma' => array(self::BELONGS_TO, 'Idiomas', 'idiomaid'),
			'conversatorioFotos' => array(self::BELONGS_TO, 'ConversatorioFotos', 'conversatorio_fotosid'),
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
			'conversatorio_fotosid' => 'Conversatorio Fotosid',
			'descripcion' => 'Descripcion',
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
		$criteria->compare('conversatorio_fotosid',$this->conversatorio_fotosid);
		$criteria->compare('descripcion',$this->descripcion,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TraConversatorioFotos the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
