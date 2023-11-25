<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('organisations', 'Organisations::getAll');
$routes->get('organisations/(:num)', 'organisations::getById/$1');

$routes->get('organisations/(:any)/contacts', 'Contacts::getAll/$1');
$routes->get('organisations/(:any)/contacts/(:any)', 'Contacts::getById/$1/$2');

$routes->get('stages', 'Stages::getAll');
$routes->get('stages/(:any)', 'Stages::getById/$1');
