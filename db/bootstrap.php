<?php

use MYFin\Application;
use MYFin\Plugins\AuthPlugin;
use MYFin\Plugins\DbPlugin;
use MYFin\ServiceContainer;

$serviceContainer = new ServiceContainer();
$app = new Application($serviceContainer);

$app->plugin(new DbPlugin());
$app->plugin(new AuthPlugin());

return $app;