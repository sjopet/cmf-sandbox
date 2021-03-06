#!/bin/bash

composer require jackalope/jackalope-doctrine-dbal:dev-master --no-update
composer update jackalope/jackalope-doctrine-dbal --prefer-source

mysql -e 'create database IF NOT EXISTS sandbox;' -u root

php app/console doctrine:phpcr:init:dbal -e=test
