<?php

/**
 * This is the model class for table "elemental.idiomas".
 *
 * The followings are the available columns in table 'elemental.idiomas':
 * @property integer $id
 * @property string $idioma
 *
 * The followings are the available model relations:
 * @property Artista[] $artistas
 * @property Audio[] $audios
 * @property Catalogo[] $catalogos
 * @property Conversatorio[] $conversatorios
 * @property Exposicion[] $exposicions
 * @property Montaje[] $montajes
 * @property Noticia[] $noticias
 * @property Obra[] $obras
 * @property Prensa[] $prensas
 * @property VerniFini[] $verniFinis
 */
class Idiomas extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'elemental.idiomas';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idioma', 'length', 'max'=>6),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, idioma', 'safe', 'on'=>'search'),
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
			'artistas' => array(self::MANY_MANY, 'Artista', 'tra_artista(idiomaid, artistaid)'),
			'audios' => array(self::MANY_MANY, 'Audio', 'tra_audio(idiomaid, audioid)'),
			'catalogos' => array(self::MANY_MANY, 'Catalogo', 'tra_catalogo(idiomaid, catalogoid)'),
			'conversatorios' => array(self::MANY_MANY, 'Conversatorio', 'tra_conversatorio(idiomaid, conversatorioid)'),
			'exposicions' => array(self::MANY_MANY, 'Exposicion', 'tra_exposicion(idiomaid, exposicionid)'),
			'montajes' => array(self::MANY_MANY, 'Montaje', 'tra_montaje(idiomaid, montajeid)'),
			'noticias' => array(self::MANY_MANY, 'Noticia', 'tra_noticia(idiomaid, noticiaid)'),
			'obras' => array(self::MANY_MANY, 'Obra', 'tra_obra(idiomaid, obraid)'),
			'prensas' => array(self::MANY_MANY, 'Prensa', 'tra_prensa(idiomaid, prensaid)'),
			'verniFinis' => array(self::MANY_MANY, 'VerniFini', 'tra_verni_fini(idiomaid, verni_finiid)'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'idioma' => 'Idioma',
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
		$criteria->compare('idioma',$this->idioma,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Idiomas the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
