<?php
namespace app\assets;

class AppAsset extends \yii\web\AssetBundle
{
    public $sourcePath = '@app/media';
	//public $sourcePath = '@webroot/app/media'; switch to this 
    public $baseUrl = '@web/media';
	public $css = [
        'css/styles.css',
		'css/styles-std.css'
    ];
    public $js = [
        'js/scripts.js'
    ];
    public $depends = [
        'yii\web\JqueryAsset',
        'yii\bootstrap\BootstrapAsset',
        'yii\bootstrap\BootstrapPluginAsset',
    ];
}
