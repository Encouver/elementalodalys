<?php

/**
 * This is the model class for table "usuarios".
 *
 * The followings are the available columns in table 'usuarios':
 * @property integer $id
 * @property string $nombre
 * @property string $usuario
 * @property string $clave
 * @property string $fecha
 */
class Usuarios extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */

	public $repeat_password;


	public function tableName()
	{
		return 'usuarios';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nombre, usuario, clave, repeat_password', 'required'),
			array('nombre, usuario, clave', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('usuario', 'unique', 'allowEmpty' => false, 'attributeName' => 'usuario','caseSensitive'=> false,'className'=>'usuarios','message'=>'Disculpe, este usuario ya existe en la bd.'),
			array('id, nombre, usuario, clave, fecha', 'safe', 'on'=>'search'),
			array('clave', 'compare', 'compareAttribute'=>'repeat_password'),
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

	public function validatePassword($password){
		return $this->hashPassword($password)===$this->clave;
	}

	public function hashPassword($password){
		return md5($password);
	}

	public function beforeSave()
	{
		if ($this->isNewRecord)
		{
	         $this->clave=md5($this->clave);
	    	 return true;
    	}else
    	{
    		return true;
    	}
	}
	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'nombre' => 'Nombre',
			'usuario' => 'Usuario',
			'clave' => 'Clave',
			'fecha' => 'Fecha',
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
		$criteria->compare('nombre',$this->nombre,true);
		$criteria->compare('usuario',$this->usuario,true);
		$criteria->compare('clave',$this->clave,true);
		$criteria->compare('fecha',$this->fecha,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Usuarios the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
