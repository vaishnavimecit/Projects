<?php
session_start();
include "config.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual Password Authentication Scheme To Protect Password</title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="header">
<div id="header_background">
<div id="total">
<div id="menu">
<?php require "menu.php"; ?>
</div>
<div id="title">
Virtual Password Authentication Scheme To Protect Password
</div>
<div id="content">
<div id="left_content">
<h1>Virtual Password Authentication Scheme To Protect Password</h1>
 In this paper, we discuss how to prevent users’ passwords from being stolen by adversaries. We propose a virtual password concept involving a small amount of human computing to secure users’ passwords in on-line environments. We adopt user-determined randomized linear generation functions to secure users’ passwords based on the fact that a server has more information than any adversary does. We analyze how the proposed scheme defends against phishing, key logger, and shoulder-surfing attacks.Users with important accounts on the Internet face many kinds of attacks, e.g., a user ID and password can be stolen and misused. The secure protocol SSL/TLS [1] for transmitting private data over the web is well-known in academic research, but most current commercial websites still rely on the relatively weak protection mechanism of user authentications via a plaintext password and user ID. Meanwhile, even though a password can be transferred via a secure channel, this authentication approach is still vulnerable to attacks as follows: Phishing, Password Stealing Trojans and Shoulder Surfing
</div>
<div id="right_bottom_content">
<img src="images/passport.jpg" height="200px" width="200px" style="padding-top:30px;">
<h2>Login Form</h2>
<form name="login" action="" method="post">
<table cellpadding="2" cellspacing="0" border="0">
<tr><td>Username</td><td><input type="text" name="uid" value=""></td></tr>
<tr><td>Password</td><td><input type="password" name="pass" value=""></td></tr>
<tr align="center"><td colspan="2"><input type="submit" name="submit" value="Login" id="button">&nbsp;&nbsp;<input type="reset" value="Clear" name="reset" id="button"></td></tr>
</table>
</form>
</div>
<div id="footer">
All rights reserved @2013 
</div>
</div>
</div>
</div>
</div>
</body>
</html>
<?php
if(isset($_POST['submit']))
{
		$uid=$_POST['uid'];
		$pass=$_POST['pass'];
		if($pass=='admin' && $uid=='admin')
		{
		echo "<script type='text/javascript'>alert('Successful Login');</script>";	
		echo "<meta http-equiv='refresh' content='0;url=inner.php'>";
		}
		else
		{
			echo "<script type='text/javascript'>alert('You Are Not Authorised User');</script>";
		}
}
?>