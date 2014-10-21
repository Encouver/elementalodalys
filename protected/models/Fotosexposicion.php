<?php

/**
 * This is the model class for table "fotosexposicion".
 *
 * The followings are the available columns in table 'fotosexposicion':
 * @property integer $idfotosexposicion
 * @property string $imagen
 * @property string $imagen_thumb
 * @property integer $idexposicion
 * @property string $descripcion
 */
class Fotosexposicion extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public $text_language;
	public $idiomaid;
	
	public function tableName()
	{
		return 'fotosexposicion';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('imagen, idexposicion, idiomaid', 'required'),
			//array('imagen','type','type'=>'array','allowEmpty'=>false),
			//array('imagen', 'file', 'types'=>'jpg, gif, png'),
			array('idexposicion', 'numerical', 'integerOnly'=>true),
			array('text_language', 'length', 'max'=>255),
			array('descripcion', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idfotosexposicion, imagen, idexposicion, descripcion', 'safe', 'on'=>'search'),
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
			'traFotosexposicion' => array(self::HAS_MANY, 'TraFotosexposicion', 'fotosexposicionid'),
			'idexposicion0' => array(self::BELONGS_TO, 'Exposicion', 'idexposicion'),
		);
	}


	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idfotosexposicion' => 'Idfotosexposicion',
			'imagen' => 'Imagen',
			'imagen_thumb' => 'Imagen Thumb',
			'idexposicion' => 'Idexposicion',
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

		$criteria->compare('idfotosexposicion',$this->idfotosexposicion);
		$criteria->compare('imagen',$this->imagen,true);
		$criteria->compare('imagen_thumb',$this->imagen_thumb,true);
		$criteria->compare('idexposicion',$this->idexposicion);
		$criteria->compare('descripcion',$this->descripcion,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Fotosexposicion the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
