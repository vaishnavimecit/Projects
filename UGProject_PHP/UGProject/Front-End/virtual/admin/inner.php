<?php
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
<form name="passport_info" action="inner.php" method="post">
<table cellpadding="10" cellspacing="0" border="0" style="padding-left:30px; text-transform:capitalize;">
<tr><td colspan="2"><h1>View User Details</h1></td></tr>
<tr><td>Username</td><td>
<select name="uid">
<option value="">Select</option>
<?php
$con=mysql_query("select * from passport");
while($row=mysql_fetch_array($con))
{
	$uid=$row['uid'];
?>
<option value="<?php echo $uid; ?>"><?php echo $uid."-".$row['mobile']; ?></option>
<?php
}
?>
</select>
</td></tr>
<tr>
<td>Police Convicated
</td>
<td><input name="polcon" type="checkbox" value="Yes"></td></tr>
<tr>
<td>Other Verification
</td>
<td><input name="polcon" type="checkbox" value="Yes"></td>

</tr>
<?php
if(isset($_POST['submit']))
{
$uid=$_POST['uid'];
$cons="select * from passport where uid='$uid'";
//echo $cons;
//exit;
$con = mysql_query($cons);
while($row=mysql_fetch_array($con))
{
$poffice=$row['poffice'];
$dist=$row['dist'];
$fname=$row['fname'];
$lname=$row['lname'];
$gender=$row['gender'];
$dob=$row['dob'];
$qualification=$row['qualification'];
$present_addr=$row['present_addr'];
$mobile=$row['mobile'];
$permanent_addr=$row['permanent_addr'];
$email=$row['email'];
$marital=$row['marital'];
$father=$row['father'];
$mother=$row['mother'];
$profession=$row['profession'];
$spouse=$row['spouse'];
$national=$row['national'];
$height=$row['height'];
$weight=$row['weight'];
$eye=$row['eye'];
$hair=$row['hair'];
$mark=$row['mark'];
$city=$row['city'];
$state=$row['state'];
$pin=$row['pin'];
$police=$row['police'];
$post=$row['post'];
$photo=$row['photo'];
$ratno=$row['ratno'];
$ratimg=$row['ratimg'];
$convict=$row['convict'];
$prev_apply=$row['prev_apply'];
$cheque=$row['cheque'];
$bank=$row['bank'];
$branch=$row['branch'];
$amount=$row['amounts'];
?>
<br>
<table width="80%" border="0" cellpadding="0" cellspacing="9" align="center" style="border:solid 3px #CC3300">
<tr ><td><strong>Passport Office</strong></td><td align="center"><?php echo $dist; ?></td><td>&nbsp;</td><td>&nbsp;</td></tr>
<tr><td><strong>First Name</strong></td><td  align="center"><?php echo $fname; ?></td><td><strong>Last Name</strong></td><td  align="center"><?php echo $lname; ?></td></tr>
<tr><td><strong>Gender</strong></td><td  align="center"><?php echo $gender; ?></td><td><strong>Date Of Birth</strong></td><td  align="center"><?php echo $dob; ?></td></tr>
<tr><td><strong>Qualification</strong></td><td  align="center"><?php echo $qualification; ?></td><td><strong>Present Address</strong></td><td align="center"><?php echo $present_addr; ?></td></tr>
<tr><td><strong>Mobile</strong></td><td  align="center"><?php echo $mobile; ?></td><td><strong>Permanent Address</strong></td><td  align="center"><?php echo $permanent_addr; ?></td></tr>
<tr><td><strong>Email</strong></td><td  align="center"><?php echo $email; ?></td><td><strong>Marital Status</strong></td><td  align="center"><?php echo $marital; ?></td></tr>
<tr><td><strong>Fathers Name</strong></td><td  align="center"><?php echo $father; ?></td><td><strong>Mother Name</strong></td><td  align="center"><?php echo $mother; ?></td></tr>
<tr><td><strong>Spouse Name</strong></td><td  align="center"><?php echo $spouse; ?></td><td><strong>Nationality</strong></td><td  align="center"><?php echo $national; ?></td></tr>
<tr><td><strong>Height</strong></td><td  align="center"><?php echo $height; ?></td><td><strong>Weight</strong></td><td  align="center"><?php echo $weight; ?></td></tr>
<tr><td><strong>Color Of Eyes</strong></td><td  align="center"><?php echo $eye; ?></td><td><strong>Color Of Hair</strong></td><td  align="center"><?php echo $hair; ?></td></tr>
<tr><td><strong>Identification mark</strong></td><td  align="center"><?php echo $mark; ?></td><td><strong>City</strong></td><td  align="center"><?php echo $city; ?></td></tr>
<tr><td><strong>State</strong></td><td  align="center"><?php echo $state; ?></td><td><strong>Pincode</strong></td><td  align="center"><?php echo $pin; ?></td></tr>
<tr><td><strong>Photo</strong></td><td  align="center"><img src="../photo/<?php echo $photo; ?>" width="100" height="100"></td><td></td><td  align="center"></td></tr> 
<tr><td><strong>Profession</strong></td><td  align="center"><?php echo $profession; ?></td><td><strong>Previously Applied</strong></td><td  align="center"><?php echo $prev_apply; ?></td></tr>
<tr><td><strong>Ration no</strong></td><td  align="center"><?php echo $ratno; ?></td><td><strong>
Ration card</strong></td>
<td align="center"><img src="../ration/<?php echo $ratimg; ?>" width="100" height="100"></td></tr>
<tr><td><strong>cheque No</strong></td><td  align="center"><?php echo $cheque; ?></td><td><strong>Bank</strong></td><td  align="center"><?php echo $bank; ?></td></tr>
<tr><td><strong>Branch</strong></td><td  align="center"><?php echo $branch; ?></td><td><strong>Amount</strong></td><td  align="center"><?php echo $amount; ?></td></tr>

</table>
<br>

<?php
}
}
?>

<tr align="center"><td colspan="2"><input type="submit" name="submit" value="Submit" id="button">&nbsp;<a href="status.php"><input type="button" value="Status" id="button"></a></td></tr>
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
