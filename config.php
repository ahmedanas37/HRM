<?php

require_once __DIR__ . '/vendor/autoload.php';


define('BASE_URL', 	   'https://mangosolutions.gettexh.com/payroll/');
define('REG_URL', 	   'https://mangosolutions.gettexh.com/payroll/registration/');
define('COMPANY_NAME', 'Mango Solutions EMS');

// MySQL Database Details
define('DB_SERVER', 	'localhost');
define('DB_USER', 		'gettexh_mangosolutions_payroll_mdb');
define('DB_PASSWORD', 'RYnqZMQ5UC');
define('DB_NAME', 		'gettexh_mangosolutions_payroll_mdb');
define('DB_PREFIX', 	'wy_');

// Email Constant
define("PHPMAILER_SMTPSECURE", 	 "ssl");
define("PHPMAILER_HOST", 		     "mail.gettexh.com");
define("PHPMAILER_PORT", 		     "465");
define("PHPMAILER_USERNAME", 	   "mangosolutions@gettexh.com");
define("PHPMAILER_PASSWORD", 	   "VyM9VniZU");
define("PHPMAILER_FROM", 		     "mangosolutions@gettexh.com");
define("PHPMAILER_FROMNAME", 	   "Mango Solutions EMS");
define("PHPMAILER_WORDWRAP", 	   "50");

ini_set("display_errors", 0);
ini_set("display_startup_errors", 0);

date_default_timezone_set("Asia/Karachi");

$db = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_NAME);
if ( mysqli_connect_errno() ) {
  die("Failed to connect to MySQL: " . mysqli_connect_error());
}

session_start();


// *** FOR PDF, please get the mpdf60 folder and paste it under project directory and uncomment the below 2 lines of code ***

// include(dirname(__FILE__) . '/mpdf60/mpdf.php');
// $mpdf = new mPDF();



$mpdf = new \Mpdf\Mpdf();


include(dirname(__FILE__) . '/functions.php');

if ( isset($_SESSION['Admin_ID']) && isset($_SESSION['Login_Type']) )
  $userData = GetDataByIDAndType($_SESSION['Admin_ID'], $_SESSION['Login_Type']);
else
  $userData = array();
