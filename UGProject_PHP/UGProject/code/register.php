<?php
include "config.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual Password Authentication Scheme To Protect Password</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<script type="text/javascript">
function rand(str)
{
document.getElementById('common').value=str;
}
function chk(str)
{
if(str=='user_defined')
{
document.getElementById('user_function').style.display='block';
document.getElementById('system_function').style.display='none';
}
if(str=='system_generated')
{
document.getElementById('user_function').style.display='none';
document.getElementById('system_function').style.display='block';
}
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
Virtual Password Authentication Scheme To Protect Password
</div>
<div id="content">
<table align="left" cellpadding="10" cellspacing="0" border="0" style="padding-left:50px;">
<tr valign="top"><td>
<form name="register" action="" method="post">
<table cellpadding="10" cellspacing="0" border="0">
<tr><td colspan="2"><h1>Registration Form</h1></td></tr>
<tr><td style="width:150px;">User Id</td><td><input type="text" name="uid" value=""></td></tr>
<tr><td>Random Number Start limit</td><td><input type="text" name="start_limit" value=""></td></tr>
<tr><td>Random Number End limit</td><td><input type="text" name="end_limit" value=""></td></tr>
<tr><td>Password</td><td><input type="password" name="pass" value="" id="pass"></td></tr>
<tr><td>A-Value</td><td><input type="text" name="a" value="" id="a"></td></tr>
<tr><td>Function type</td><td><select name="func_type" onchange="chk(this.value)">
<option value="">Select</option>
<option value="user_defined">User Defined</option>
<option value="system_generated">System Generated</option>
</select>
</td></tr>
<table style="display:none;" id="user_function">
<tr><td width="170">Function</td><td><input type="text" name="func" value="" /></td></tr>
<tr><td width="200" colspan="2">Give User Defined Function in the format like ($a+$x) only variables  like a,x,y,z,c are allowed</td></tr>
</table>
<table style="display:none; padding-left:10px;" id="system_function">
<tr><td colspan="2">Function</td></tr>
<tr><td colspan="2"><input type="radio" name="func" value="[$a($x+$y)+$c]%($z)">F=[a(x+y)+c]modZ</td></tr>
<tr><td colspan="2"><input type="radio" name="func" value="($a*$x)+($c*$y)">F=ax+cy</td></tr>
<tr><td colspan="2"><input type="radio" name="func" value="($c*$x)-($a*$y)">F=cx-ay</td></tr>
<tr><td colspan="2"><input type="radio" name="func" value="[($x*$c)]%($y)">F=(x*c)mody</td></tr>
<tr><td colspan="2"><input type="radio" name="func" value="[($x*$y)+($a*$z)]%($c)">F=(xy+aZ)modc</td></tr>
</table>
<tr align="center"><td colspan="2"><input type="submit" name="submit" value="Register" id="button">&nbsp;&nbsp;<input type="reset" value="Clear" name="reset" id="button">&nbsp;&nbsp;<a href="index.php"><input type="button" value="Back" id="button"></a></td></tr>
</table>
</td>
<td>
<table cellpadding="10" cellspacing="0" border="0"  style="width:300px; height:100px; padding-top:10px;">
<tr><td><h2>Select Constant Parameter</h2></td></tr>
<tr><td><input type="button" name="1" value="1" onClick="return rand(this.value);">&nbsp;&nbsp;<input type="button" name="2" value="2" onClick="return rand(this.value);">&nbsp;&nbsp;<input type="button" name="3" value="3" onClick="return rand(this.value);"></td></tr>
<tr><td><input type="button" name="4" value="4" onClick="return rand(this.value);">&nbsp;&nbsp;<input type="button" name="5" value="5" onClick="return rand(this.value);">&nbsp;&nbsp;<input type="button" name="6" value="6" onClick="return rand(this.value);"></td></tr>
<tr><td><input type="button" name="7" value="7" onClick="return rand(this.value);">&nbsp;&nbsp;<input type="button" name="8" value="8" onClick="return rand(this.value);">&nbsp;&nbsp;<input type="button" name="9" value="9" onClick="return rand(this.value);"></td></tr>
<tr><td><input type="hidden" name="common" id="common" value=""></td></tr>
</table>
</form>
</td>
</tr>
</table>
</div>
<div id="footer">
All rights reserved @2012 
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
$start_limit=$_POST['start_limit'];
$end_limit=$_POST['end_limit'];
$pass=$_POST['pass'];
$common=$_POST['common'];
$func=$_POST['func'];
$a=$_POST['a'];
mysql_query("insert into register(uid,start_limit,end_limit,pass,common,func,a)values('$uid','$start_limit','$end_limit','$pass','$common','$func','$a')")or die(mysql_error());
}
?>