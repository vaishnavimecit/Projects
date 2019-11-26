<?php
session_start();
include "config.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual Password Authentication</title>
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
Virtual Password Authentication </div>
<div id="content">
<?php
$uid=$_SESSION['uid'];
$con=mysql_query("select * from passport where uid='$uid' and status='dispatch'");
$count=mysql_num_rows($con);
if($count==1)
{
while($row=mysql_fetch_array($con))
{

	$name=$row['fname']." ".$row['lname'];
	$state=$row['state'];
	$father=$row['father'];
	$national=$row['national'];
	$gender=$row['gender'];
	$dob=$row['dob'];
	$photo=$row['photo'];
?>
<table cellpadding="10" cellspacing="0" border="0" style="padding-left:30px; text-transform:uppercase;">
<tr><td colspan="2"><h1>Passport</h1></td></tr>
<tr><td>
<table cellpadding="10" cellspacing="0" border="5" style="border:solid 5px">
<tr><td valign="top">
<table cellpadding="5" cellspacing="0" border="0" width="300"> 
<tr align="center"><td colspan="2"><h2>Republic Of India</h2></td></tr>
<tr><td colspan="2"><img src="photo/<?php echo $photo; ?>" width="100" height="100"></td></tr>
<tr><td width="100px;">Name</td><td><?php echo $name; ?></td></tr>
<tr><td width="100px;">State</td><td><?php echo $state; ?></td></tr>
<tr><td>Fatehr Name</td><td><?php echo $father; ?></td></tr>
<tr><td>Nationality</td><td><?php echo $national; ?></td></tr>
<tr><td>Gender</td><td><?php echo $gender; ?></td></tr>
<tr><td>Date Of Birth</td><td><?php echo $dob; ?></td></tr>
</table>
</td>
<td>
<table>
<tr><td>

<img src="images/passport.jpg" width="300" height="300"></td></tr>
</table></td>
</tr>
</table>
</td></tr>
<tr>
  <td align="center">
  <a href="print.php?id=<?php echo $row['id']; ?>&Mode=Print" target="_blank">
  <input type="button" value="PRINT"/></a>
  </td>
  
</tr>
</table>
<?php
}
}
else
{
  echo "<script type='text/javascript'>alert('Your Passportd is currently holded');</script>";
}
?>
</div>
<div id="footer">
All rights reserved @2013</div>
</div>
</div>
</div>
</body>
</html>
