<?php use yii\helpers\Html; ?>

<div class="row">
    <div class="col-md-4">

        <?= Html::img($item->thumb(180, 160)) ?>
    </div>
    <div class="col-md-8">
        <p><?= Html::a($item->title, ['shop/view', 'slug' => $item->slug]) ?></p>

        <h3>
            <?php if($item->discount) : ?>
                <del class="small"><?= $item->oldPrice ?></del>
            <?php endif; ?>
            $<?= $item->price ?>
        </h3>
    </div>
</div>
<br>