<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLDatabase',
	'server' => 'localhost',
	'username' => 'alesandapres',
	'password' => 'GXp48y1*1643p',
	'database' => 'alesandapres',
	'path' => ''
);

// Set the site locale
i18n::set_locale('en_US');
