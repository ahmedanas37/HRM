<?php

define('BASE_URL',   'https://mangosolutions.gettexh.com/payroll/registration/');

define('DB_SERVER', 	'localhost');
define('DB_USER', 		'gettexh_mangosolutions_payroll_mdb');
define('DB_PASSWORD', 'RYnqZMQ5UC');
define('DB_NAME', 		'gettexh_mangosolutions_payroll_mdb');
define('DB_PREFIX', 	'wy_');

error_reporting(0);

date_default_timezone_set("Asia/Karachi");

$db = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_NAME);
if ( mysqli_connect_errno() ) {
  die("Failed to connect to MySQL: " . mysqli_connect_error());
}

session_start();
