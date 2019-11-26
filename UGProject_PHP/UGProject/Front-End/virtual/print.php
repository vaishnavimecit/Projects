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
  <?php 

echo "<script type='text/javascript'>window.print()</script>";
 ?>
  </td>
  
</tr>
</table>
<?php } } ?>	