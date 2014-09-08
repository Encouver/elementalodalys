<?php

/**
 * This is the model class for table "elemental.tra_noticia".
 *
 * The followings are the available columns in table 'elemental.tra_noticia':
 * @property integer $idiomaid
 * @property integer $noticiaid
 * @property string $titulo
 * @property string $contenido
 */
class TraNoticia extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'elemental.tra_noticia';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idiomaid, noticiaid, titulo, contenido', 'required'),
			array('idiomaid, noticiaid', 'numerical', 'integerOnly'=>true),
			array('titulo', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idiomaid, noticiaid, titulo, contenido', 'safe', 'on'=>'search'),
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
			'idiomaid' => 'Idiomaid',
			'noticiaid' => 'Noticiaid',
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

		$criteria->compare('idiomaid',$this->idiomaid);
		$criteria->compare('noticiaid',$this->noticiaid);
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
	 * @return TraNoticia the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
