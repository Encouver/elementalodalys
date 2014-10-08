<?php

/**
 * This is the model class for table "textocuratorial".
 *
 * The followings are the available columns in table 'textocuratorial':
 * @property integer $idtextocuratorial
 * @property string $titulo
 * @property string $contenido
 * @property string $autor
 * @property string $cargo_autor
 * @property integer $idexposicion
 */
class Textocuratorial extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'textocuratorial';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('titulo, contenido, autor, idexposicion', 'required'),
			array('idexposicion', 'numerical', 'integerOnly'=>true),
			array('titulo, autor, cargo_autor', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idtextocuratorial, titulo, contenido, autor, cargo_autor, idexposicion', 'safe', 'on'=>'search'),
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
			'idtextocuratorial' => 'Idtextocuratorial',
			'titulo' => 'Titulo',
			'contenido' => 'Contenido',
			'autor' => 'Autor',
			'cargo_autor' => 'Cargo Autor',
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

		$criteria->compare('idtextocuratorial',$this->idtextocuratorial);
		$criteria->compare('titulo',$this->titulo,true);
		$criteria->compare('contenido',$this->contenido,true);
		$criteria->compare('autor',$this->autor,true);
		$criteria->compare('cargo_autor',$this->cargo_autor,true);
		$criteria->compare('idexposicion',$this->idexposicion);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Textocuratorial the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	        public function getConcatened()
        {
                return $this->autor.' - '.$this->titulo;
        }

}
