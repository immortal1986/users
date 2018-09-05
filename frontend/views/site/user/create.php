<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use yii\bootstrap\Modal;
use yii\grid\GridView;


/* @var $this yii\web\View */
/* @var $model common\models\User */

$this->title = 'Create User';
$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            'id',
            'user_id',
            'office',
            'house',

        ],
    ]); ?>
    <?php
    Modal::begin([
        'header' => '<h2>New address</h2>',
        'toggleButton' => ['label' => 'New   address','class'=>'btn btn-md btn-primary'],

    ]);
    Pjax::begin(); ?>
    <code class="php">
        <?php Pjax::begin(); ?>
        <?= Html::beginForm(['site/create'], 'post', ['data-pjax' => '', 'class' => 'form-inline']); ?>
        <?= Html::input('text', 'string', Yii::$app->request->post('string'), ['class' => 'form-control']) ?>
        <?= Html::submitButton('Вычислить MD5', ['class' => 'btn btn-lg btn-primary']) ?>
        <?= Html::endForm() ?>
        <h3><?= $md5 ?></h3>
        <?php Pjax::end(); ?></code>

    <?php Pjax::end(); ?>

    <?php
    Modal::end();


    ?>
</div>
