<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "address".
 *
 * @property int $id
 * @property int $user_id
 * @property int $office
 * @property string $house
 * @property string $city
 * @property string $post_index
 * @property string $country
 */
class Address extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'address';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'office'], 'integer'],
            [['house', 'city', 'post_index', 'country'], 'required'],
            [['house', 'city', 'post_index'], 'string', 'max' => 255],
            [['country'], 'string', 'max' => 2],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'office' => 'Office',
            'house' => 'House',
            'city' => 'City',
            'post_index' => 'Post Index',
            'country' => 'Country',
        ];
    }
}
