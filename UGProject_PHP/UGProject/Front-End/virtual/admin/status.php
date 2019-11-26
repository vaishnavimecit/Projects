<?php
session_start();
include "config.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual Password Authentication </title>
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
Virtual Password Authentication	
</div>
<div id="content">
<form name="status" action="" method="post">
<table cellpadding="10" cellspacing="0" border="0" style="padding-left:30px; text-transform:capitalize;">
<tr><td colspan="2"><h1>Update Passport Status</h1></td></tr>
<tr><td>Username</td><td>
<select name="uid">
<option value="">Select</option>
<?php
$con=mysql_query("select * from passport");
while($row=mysql_fetch_array($con))
{
	$uid=$row['uid'];
	$mobno = $row['mobile'];
?>
<option value="<?php echo $uid; ?>"><?php echo $uid."-".$row['mobile']; ?></option>
<?php
}
?>
</select>
</td></tr>
<tr><td>Status</td><td>
<select name="status">
<option value="">Select</option>
<option value="dispatch">Dispatch</option>
<option value="hold">Hold</option>
</select>
</td></tr>
<tr align="center"><td colspan="2"><input type="submit" name="submit" value="Submit" id="button"></td></tr>
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
$status=$_POST['status'];
$sql="update passport set status='$status' where uid='$uid'";
//echo $sql;
//exit;
mysql_query($sql);

	 echo "<script type='text/javascript'>window.open('http://bulksmsindia.mobi/sendurlcomma.aspx?user=20064973&pwd=crisp1996&senderid=PROJEC&mobileno=$mobno&msgtext=Welcome to Passport Office Your Passport is $status &smstype=4&priority=High')</script>";  

}
?>