<?php require_once(dirname(__FILE__) . '/config.php'); 
if ( isset($_SESSION['Admin_ID']) && $_SESSION['Login_Type'] == 'admin' ) {
    header('location:' . BASE_URL . 'attendance/');
}
if ( isset($_SESSION['Admin_ID']) && $_SESSION['Login_Type'] == 'emp' ) {
    header('location:' . BASE_URL . 'profile/');
} ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <title>Login - EMS</title>

    <link rel="stylesheet" href="<?php echo BASE_URL; ?>bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>dist/css/AdminLTE.css">
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>dist/css/skins/_all-skins.min.css">

    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="hold-transition login-page">
<body style="background: linear-gradient(120deg, #F6F6F6, #EDEDED);">
    <div class="login-box">
        <div class="login-logo">
            <a href="<?php echo BASE_URL; ?>"><h1><body style="background-color:#000000">Mango Solutions EMS</a></body>
            
        </div><br>
        <div class="login-box-body">
            <p class="login-box-msg">Please login to start your session</p>
            <form method="POST" role="form" data-toggle="validator" id="login-form">
                <div class="form-group has-feedback">
                    <input type="text" class="form-control" id="code" name="code" placeholder="Employee Code" required />
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required />
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <button type="submit" class="btn btn-success btn-block btn-flat">Login</button>
            </form><br>
            <div class="login-logo-container">
    <img src="mango.jpeg" alt="Logo 1" class="login-small-logo">
  </div>


</form>
			<!--<a href="http://localhost/payroll/registration/newreg.php">Register a new employee</a></P>--->

        </div>
        

    </div>
	
	

    <script src="<?php echo BASE_URL; ?>plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="<?php echo BASE_URL; ?>bootstrap/js/bootstrap.min.js"></script>
    <script src="<?php echo BASE_URL; ?>plugins/bootstrap-notify/bootstrap-notify.min.js"></script>
    <script src="<?php echo BASE_URL; ?>plugins/jquery-validator/validator.min.js"></script>
    <script src="<?php echo BASE_URL; ?>plugins/bootstrap-notify/bootstrap-notify.min.js"></script>
    <script src="<?php echo BASE_URL; ?>dist/js/app.min.js"></script>
    <script type="text/javascript">var baseurl = '<?php echo BASE_URL; ?>';</script>
    <script src="<?php echo BASE_URL; ?>dist/js/script.js?rand=<?php echo rand(); ?>"></script>
	
<footer>
  <p><center><b>Powered By: GETTEXH. All Rights Reserved © 2023</p>
  <p><h5>For more queries Email us at <a href="mailto:info@gettexh.com">info@gettexh.com</a></p>
</footer>


</body>
</html>