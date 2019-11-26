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
<script type="text/javascript">
function validate(str)
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","ajax.php?uid="+str,true);
xmlhttp.send();
}
</script>
</head>
<body>
<div id="header">
<div id="header_background">
<div id="total">
<div id="menu">
<?php require "menu.php"; ?>
</div>
<div id="title">
Virtual Password Authentication 
</div>
<div id="content">
<div id="left_content">
<h1>Virtual Password Authentication </h1>
 In this paper, we discuss how to prevent users’ passwords from being stolen by adversaries. We propose a virtual password concept involving a small amount of human computing to secure users’ passwords in on-line environments. We adopt user-determined randomized linear generation functions to secure users’ passwords based on the fact that a server has more information than any adversary does. We analyze how the proposed scheme defends against phishing, key logger, and shoulder-surfing attacks.Users with important accounts on the Internet face many kinds of attacks, e.g., a user ID and password can be stolen and misused. The secure protocol SSL/TLS [1] for transmitting private data over the web is well-known in academic research, but most current commercial websites still rely on the relatively weak protection mechanism of user authentications via a plaintext password and user ID. Meanwhile, even though a password can be transferred via a secure channel, this authentication approach is still vulnerable to attacks as follows: Phishing, Password Stealing Trojans and Shoulder Surfing
</div>
<div id="right_bottom_content">
<h2>Login Form</h2>
<form name="login" action="" method="post">
<table cellpadding="2" cellspacing="0" border="0">
<tr><td>Userid</td><td><input type="text" name="uid" value="" onblur="validate(this.value)"></td></tr>

<tr><td>X* Value</td><td><input type="text" name="x" value=""></td></tr>
<tr><td>Y* Value</td><td><input type="text" name="y" value=""></td></tr>
<tr><td>C* Value</td><td><input type="text" name="common" value=""></td></tr>
<tr><td>A Value</td><td><input type="text" name="a" value=""></td></tr>
<tr><td>Password</td><td><input type="password" name="pass" value=""></td></tr>

<tr align="center"><td colspan="2"><input type="submit" name="submit" value="Login" id="button">&nbsp;<a href="helper.php"><input type="button" value="Helper" id="button"></a>&nbsp;<a href="register.php"><input type="button" value="Register" id="button"></a></td></tr>
<tr><td colspan="2" id="myDiv"></td></tr>
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
		$a=$_POST['a'];
		$z=1;
		$_SESSION['uid']=$uid=$_POST['uid'];
		$pass=$_POST['pass'];
		$x=$_POST['x'];
		$y=$_POST['y'];
	$con=mysql_query("select * from register where uid='$uid'");
	while($row=mysql_fetch_array($con))
	{
		$password=$row['pass'];
		//echo $password;
		
		$pos=strpos($password,$x);
		
		$pass_len=strlen($pos);
		$random_num=$row['random_num'];
		$str=strpos($random_num,$y);
		$rand_len=strlen($str);
		$c=$row['common'];
		$func=$row['func'];
		$p=eval("return $func;");
		if("$p"=="$pass" && $pass_len>0 && $rand_len>0)
		{
		echo "<script type='text/javascript'>alert('Successful Login');</script>";	
		echo "<meta http-equiv='refresh' content='0;url=inner.php'>";
		}
		else
		{
		echo "<script type='text/javascript'>alert('Dynamic Password Mismatch or You have not entered the correct digit from the password or random salt');</script>";
		}
	}
}
?>
