<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'language'=>'zh-CN',
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        'allowActions' => [
            //允许访问的action
            //controller/action
            // 'site/logout',
            // 'site/captcha',
            '*'
        ]
    ],
    "modules" => [
        "admin" => [
            "class" => "mdm\admin\Module",
        ],
    ],
    "aliases" => [
        "@mdm/admin" => "@vendor/mdmsoft/yii2-admin",
    ],
    'components' => [
        'i18n' => [
            'translations' => [
                'common' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    //'basePath' => '/messages',
                    'fileMap' => [
                        'common' => 'common.php',
                    ],
                ],
                'power' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    //'basePath' => '/messages',
                    'fileMap' => [
                        'power' => 'power.php',
                    ],
                ],
            ],
        ],
        //components数组中加入authManager组件,有PhpManager和DbManager两种方式,
        //PhpManager将权限关系保存在文件里,这里使用的是DbManager方式,将权限关系保存在数据库.
        "authManager" => [
            "class" => 'yii\rbac\DbManager', //单引号
            "defaultRoles" => ["guest"],
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],

        'urlManager' => [
            'enablePrettyUrl' => true,//用于表明urlManager是否启用URL美化功能  path路径化
            'showScriptName' => false, //true显示入口脚本index.php，false不显示
            // 'suffix' => '.html', //指定续接在URL后面的一个后缀，如 .html 之类的。仅在 enablePrettyUrl 启用时有效
            'rules' => [
                "<module:[-\w]+>/<controller:[-\w]+>/<action:[-\w]+>/<id:\d+>"=>"<module>/<controller>/<action>",
                "<controller:[-\w]+>/<action:[-\w]+>/<id:\d+>"=>"<controller>/<action>",
                "<controller:[-\w]+>/<action:[-\w]+>"=>"<controller>/<action>",
                //"admin-user/<action:\w+>/<id:\w+>"=>"admin-user/<action>",
            ],
        ],
    ],
    'params' => $params,
];
