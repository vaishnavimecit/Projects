<?php
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
<form name="helper" action="" method="post">
<table align="left" cellpadding="15" cellspacing="0" border="0" style="padding-left:100px;">
<tr><td colspan="2"><h1>Virtual Password  With Helper Application</h1></td></tr>
<tr><td style="width:110px;">User Id</td><td><input type="text" name="uid" value=""></td></tr>
<tr><td>Random Salt</td><td><input type="text" name="random_salt" value=""></td></tr>
<tr align="left"><td colspan="2"><input type="submit" name="submit" value="Send" id="button">&nbsp;&nbsp;<input type="reset" value="Clear" name="reset" id="button">&nbsp;&nbsp;<a href="index.php"><input type="button" value="Back" id="button"></a></td></tr>
</table>
</form>
</div>
<div id="footer">
All rights reserved @2013</div>
</div>
</div>
</div>
</body>
</html>
<?php 
if(isset($_POST['submit']))
{
$uid=$_POST['uid'];
$random_salt=$_POST['random_salt'];	
$con="select * from register where uid='$uid' and random_num='$random_salt'";
//echo $con;
//exit;
$cons = mysql_query($con);
	while($row=mysql_fetch_array($cons))
	{
		$password=$row['pass'];
		$c=$row['common'];
		$func=$row['func'];
		$mobno = $row['mobno'];
		$aval =  $row['a'];
		
		echo "<script type='text/javascript'>window.open('http://bulksmsindia.mobi/sendurlcomma.aspx?user=20064973&pwd=crisp1996&senderid=PROJEC&mobileno=$mobno&msgtext=Your Password is $password and constatnt factor is $c and your function is $func and your A value is $aval &smstype=4&priority=High')</script>"; 
		
	}
}
?>