<?php
session_start();
$cap = 'notEq';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($_POST['captcha'] == $_SESSION['cap_code']) {
        // Captcha verification is Correct. Do something here!
        $cap = 'Eq';
    } else {
        // Captcha verification is wrong. Take other action
        $cap = '';
    }
}
include "config.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Virtual Password Authentication Scheme </title>
<link rel="stylesheet" href="style.css" type="text/css" />




      
 <style type="text/css">
           #form{
                margin:0px;
                width: 950px;
                outline: 5px solid #ac4713;
                border: 1px solid #ac4713;
                padding: 15px;
				margin:0 auto;
            }
            
            #form img{
                margin-bottom: 8px;
            }
            #form input[type="submit"]{
                background-color: #ac4713;
                border: none;
                color: #fff;
                padding: 5px 8px;
                cursor: pointer;
                font:bold 12px arial;
            }
            .error{
                border: 1px solid red;
            }
            .cap_status{
                width: 850px;
                padding: 10px;
                font: 14px arial;
                color: #fff;
                background-color: #10853f;
                display: none;
            }
            .cap_status_error{
                background-color: #bd0808;                
            }
        </style>
        
        <style type="text/css">
@import "DatePicker/flora.datepick.css";
</style>
<script type="text/javascript" src="jquery-1.4.2.js"></script>
<script type="text/javascript" src="DatePicker/jquery.datepick.js"></script>
<script type="text/javascript">
$(function() {
	$('#fromdate').datepick();
	
});
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
<div id="passport">
<!--<a href="register.php?uid=<?php echo $uid; ?>">Change Password</a>-->
<form name="passport" action="" method="post">
<table cellpadding="10" cellspacing="0" border="0" style="padding-left:30px;">
<tr><td colspan="2"><h1>Online Passport Application</h1></td></tr>
<tr>
<td>Passport</td>
       <td>
                <select name="distric" style="width:150px;">
	<option value="0">Select District here</option>
	<option value="ariyalur">Ariyalur</option>
    <option value="chennai">Chennai</option>
	<option value="coimbotore">Coimbotore</option>
	<option value="cuddalore">Cuddalore</option>
	<option value="dharmapuri">Dharmapuri</option>
	<option value="dindigul">Dindigul</option>

	<option value="erode">Erode</option>
	<option value="kancheepuram">Kancheepuram</option>
	<option value="kanniyakumari">Kanniyakumari</option>
	<option value="kanyakumari">Kanyakumari</option>
	<option value="karur">Karur</option>
	<option value="kayatar">Kayatar</option>

	<option value="krishnagiri">Krishnagiri</option>
	<option value="madurai">Madurai</option>
	<option value="nagapattinam">Nagapattinam</option>
	<option value="namakkal">Namakkal</option>
	<option value="nammakkal">Nammakkal</option>
	<option value="nilgiris">Nilgiris</option>

	<option value="perambalur">Perambalur</option>
	<option value="pudukkottai">Pudukkottai</option>
	<option value="ramanathapuram">Ramanathapuram</option>
	<option value="salem">Salem</option>
	<option value="sivaganga">Sivaganga</option>
	<option value="thanjavur">Thanjavur</option>

	<option value="theni">Theni</option>
	<option value="thiruvallur">Thiruvallur</option>
	<option value="thiruvarur">Thiruvarur</option>
	<option value="thoothkudi">Thoothkudi</option>
	<option value="tiruchiorappalli">Tiruchiorappalli</option>
	<option value="tiruchirapalli">Tiruchirapalli</option>

	<option value="tirunelvali">Tirunelvali</option>
	<option value="tirunelveli">Tirunelveli</option>
	<option value="tiruvallur">Tiruvallur</option>
	<option value="tiruvannamalai">Tiruvannamalai</option>
	<option value="tiruvarur">Tiruvarur</option>
	<option value="toothukudi">Toothukudi</option>

	<option value="udangudi">Udangudi</option>
	<option value="vellore">Vellore</option>
	<option value="villupuram">Villupuram</option>
	<option value="virudhunagar">Virudhunagar</option>

</select> 
            </td>
</tr>
<tr><td>First Name</td><td><input type="text" name="fname" value=""></td><td>Last Name</td><td><input type="text" name="lname" value=""></td></tr>
<tr><td>Gender</td>
<td><input name="gender" type="radio" value="Male" checked> Male
<input name="gender" type="radio" value="Female"> Female
</td>

<td>Date Of Birth</td>
<td><input type="text" name="fromdate" id="fromdate" ></td>
</tr>

<tr><td>Qualification</td><td><input type="text" name="qualification" value=""></td><td>Present Address</td><td><textarea name="present_addr" rows="3" cols="30"></textarea></td></tr>
<tr><td>Mobile</td><td><input type="text" name="mobile" value=""></td><td>Permanent Address</td><td><textarea name="permanent_addr" rows="3" cols="30"></textarea></td></tr>
<tr><td>Email</td><td><input type="text" name="email" value=""></td><td>Marital Status</td><td><input type="text" name="marital" value=""></td></tr>
<tr><td>Fathers Name</td><td><input type="text" name="father" value=""></td><td>Mother Name</td><td><input type="text" name="mother" value=""></td></tr>
<tr><td>Profession</td><td><input type="text" name="profession" value=""></td><td>Enter Content Of The Image</td><td><input type="text" name="captcha" id="captcha" maxlength="6" size="6"/>&nbsp;&nbsp;<img src="captcha.php"/></td></tr>
<tr><td colspan="4"><div class="cap_status"></div></td></tr>
<tr align="center"><td colspan="2"><input type="submit" name="submit" value="Submit" id="button">&nbsp;&nbsp;<input type="reset" value="Clear" name="reset" id="button">&nbsp;&nbsp;<a href="next.php"><input type="button" value="Next" id="button"></a></td></tr>
</table>
</form>
</div>
<div id="footer">
All rights reserved @2013 
</div>
</div>
</div>
</div>
</body>
</html>
<?php
if(isset($_POST['submit']))
{
$uid=$_SESSION['uid']; 	 	 	 	 	 	 	 	 	 	 	 
$poffice=$_POST['poffice'];
$dist=$_POST['dist'];
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$gender=$_POST['gender'];
$dob=$_POST['dob'];
$qualification=$_POST['qualification'];
$present_addr=$_POST['present_addr'];
$mobile=$_POST['mobile'];
$permanent_addr=$_POST['permanent_addr'];
$email=$_POST['email'];
$marital=$_POST['marital'];
$father=$_POST['father'];
$mother=$_POST['mother'];
$profession=$_POST['profession'];
$cap = 'notEq';
if(($_SERVER['REQUEST_METHOD']=='POST')) {
   if ($_POST['captcha'] == $_SESSION['cap_code']) {
    mysql_query("insert into passport(uid,poffice,dist,fname,lname,gender,dob,qualification,present_addr,mobile,permanent_addr,email,marital,father,mother,profession)values('$uid','$poffice','$dist','$fname','$lname','$gender','$dob','$qualification','$present_addr','$mobile','$permanent_addr','$email','$marital','$father','$mother','$profession')")or die(mysql_error());
	
echo "<script language='javascript'>alert(Registered Successfully);</script>";

$cap = 'Eq';
    } else {
       echo "<script language='javascript'>alert(Cannot Registered);</script>";
        $cap = '';
    }
}
}
?>

