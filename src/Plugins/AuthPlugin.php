<?php

namespace MYFin\Plugins;

use Interop\Container\ContainerInterface;
use MYFin\Auth\Auth;
use MYFin\Auth\JasnyAuth;
use MYFin\ServiceContainerInterface;

class AuthPlugin implements PluginInterface
{

    public function register(ServiceContainerInterface $container)
    {
        $container->addLazy(
            'jasny.auth', function (ContainerInterface $container) {
                return new  JasnyAuth($container->get('user.repository'));
            }
        );
        $container->addLazy(
            'auth', function (ContainerInterface $container) {
                return new Auth($container->get('jasny.auth'));
            }
        );
    }
}
