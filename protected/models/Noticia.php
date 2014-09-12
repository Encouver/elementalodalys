<?php

/**
 * This is the model class for table "elemental.noticia".
 *
 * The followings are the available columns in table 'elemental.noticia':
 * @property integer $idnoticia
 * @property string $fecha
 * @property string $imagen
 * @property string $link
 * @property string $titulo
 * @property string $contenido
 *
 * The followings are the available model relations:
 * @property TraNoticia[] $traNoticias
 */
class Noticia extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'elemental.noticia';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('fecha', 'required'),
			array('imagen, link, titulo', 'length', 'max'=>255),
			array('contenido', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idnoticia, fecha, imagen, link, titulo, contenido', 'safe', 'on'=>'search'),
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
			'traNoticias' => array(self::HAS_MANY, 'TraNoticia', 'noticiaid'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idnoticia' => 'Idnoticia',
			'fecha' => 'Fecha',
			'imagen' => 'Imagen',
			'link' => 'Link',
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

		$criteria->compare('idnoticia',$this->idnoticia);
		$criteria->compare('fecha',$this->fecha,true);
		$criteria->compare('imagen',$this->imagen,true);
		$criteria->compare('link',$this->link,true);
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
	 * @return Noticia the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
