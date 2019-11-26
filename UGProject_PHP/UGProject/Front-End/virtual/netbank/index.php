<?php 
ob_start();
session_start();
include_once  "../database/dbconnect.php";

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Opass</title>
<link rel="stylesheet" type="text/css" href="stylesheet/mystyle.css" />
<link rel="stylesheet" type="text/css" href="stylesheet/menu.css" />
<script type="text/javascript">
<!--
vs=new sat();
function updateClock ( )
{
  var currentTime = new Date ( );

  var currentHours = currentTime.getHours ( );
  var currentMinutes = currentTime.getMinutes ( );
  var currentSeconds = currentTime.getSeconds ( );

  // Pad the minutes and seconds with leading zeros, if required
  currentMinutes = ( currentMinutes < 10 ? "0" : "" ) + currentMinutes;
  currentSeconds = ( currentSeconds < 10 ? "0" : "" ) + currentSeconds;

  // Choose either "AM" or "PM" as appropriate
  var timeOfDay = ( currentHours < 12 ) ? "AM" : "PM";

  // Convert the hours component to 12-hour format if needed
  currentHours = ( currentHours > 12 ) ? currentHours - 12 : currentHours;

  // Convert an hours component of "0" to "12"
  currentHours = ( currentHours == 0 ) ? 12 : currentHours;

  // Compose the string for display
  var currentTimeString = currentHours + ":" + currentMinutes + ":" + currentSeconds;

  // Update the time display
  document.getElementById("timeset").value = currentTimeString;
}

// -->
</script>
<head>
<script language="javascript">
redirTime = "5000";
redirURL = "http://localhost/opass/netbank/index.php";
function redirTimer() {
self.setTimeout("self.location.href = redirURL;",redirTime);
}
</script>
</head>
<body >

<div id="#total">
<table width="100%" border="0" cellspacing="0">
  <tr>
    <th scope="col">
    <img src="images/banner2.jpg" width="947" height="154" />
    </th>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0">
  <tr>
    <th scope="col">
    <!--<div id='cssmenu'>
<ul>
   <li class='active'><a href='index.php'><span>Register</span></a></li>
   <li><a href='login.php'><span>Login</span></a></li>
 
</ul>
</div>-->

    </th>
  </tr>
</table>
<table width="94%" border="0" cellspacing="0" style="background-color:#0861b5; margin:0px auto; width:950px; color:rgb(255,255,255)" align="center">
  <tr>
    <th width="436" scope="col"><p style="color:rgb(102,204,255); font-weight:bold; font-size:25px">Internet Banking </p>
      <p style="text-align:justify; font-weight:300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      Online Net Banking allows customers to perform banking transactions anywhere and at anytime without the need of human teller. By using a debit or ATM card at an ATM, individuals can withdraw cash from checking or savings accounts make a deposit or transfer money from one account to another or perform other functions. You can also get cash advances using a credit card at an ATM. Cash Dispenser Management System online with the bank, that is, each transaction will be authorized by the bank on-demand and directly debited from the account's owner. Cash Dispenser Management System used by bank customers to process account transactions. The user first gives username and a personal identification number (PIN) to prevent unauthorized transactions. These system permits the ATM to complete the transaction; most machines can dispense cash, accept deposits, transfer funds, and provide information on account balances. The system can provide the clients of financial institution with access to the financial transactions in public space without need for a cashier. In the existing system the transactions are done only manually but in proposed system we have to computerize all the banking transaction using the software Online Banking. The project is a web based reporting application. The existing application gathers all the transaction data from different ATM Machines.
      </p></th>
    <th width="51" scope="col">
    <p  style="border-left: 1px solid rgb(0,0,0); margin-left:15px; height:520px;"></p>
    </th>
    <th width="457" scope="col">
    <table width="100%" border="0" cellspacing="5">
    <form action="index.php" method="post" enctype="multipart/form-data" name="admindes"
    onsubmit="return validation()">
  <tr>
    <th colspan="2" scope="col" align="center"><img src="images/seclogin.png" width="236" height="130" style="margin-left:30px;" /></th>
    </tr>
    
  <tr>
    <th width="45%" scope="row"><label for="timeset"></label>
      <input type="hidden" name="timeset" id="timeset" readonly="readonly" />
      </th>
    <td width="55%" align="left"><label for="randpass"></label>
      <input type="hidden" name="randpass" id="randpass" value="<?php echo str_rand(); ?>" /></td>
  </tr>
  <tr>
    <th scope="row" align="right">User Id :</th>
    <td align="left"><label for="username"></label>
      <input type="text" name="userid" id="userid" /></td>
  </tr>
  <tr>
    <th scope="row" align="right">Password :</th>
    <td align="left"><label for="username6"></label>
      <input type="password" name="password" id="password" /></td>
  </tr>
  <tr>
    <th scope="row" align="right">&nbsp;</th>
    <td align="left">&nbsp;</td>
  </tr>
  <tr>
    <th colspan="2" align="center"  scope="row"><input type="submit" name="submit" id="submit" value="Submit" style="margin-left:30px;"/>      
    <input type="submit" name="getpass" id="getpass" value="Get password" /></th>
    </tr>
     </form>
    </table>

    </th>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
 
</table>


</div>
</body>
</html>

<script type="text/javascript">

document.getElementById('userid').focus();


function validation() {
	
	var frm = document.admindes;
	
	if(frm.name.value =="") { alert("Please Enter the Name."); frm.name.focus(); return false }
		if(frm.mobno.value =="") { alert("Please Enter the Mobile No."); frm.mobno.focus(); return false }
	if(frm.userid.value =="") { alert("Please Enter the User Id."); frm.userid.focus(); return false }
if(frm.email.value =="") { alert("Please Enter the Email."); frm.email.focus(); return false }
             if(frm.password.value =="") { alert("Please Enter the Password."); frm.password.focus(); return false }
	

	
	
	return true;
}

</script>

<?php
function str_rand($length = 8, $seeds = 'alphanum')
{
	// Possible seeds
	$seedings['alpha'] = 'abcdefghijklmnopqrstuvwqyz';
	$seedings['numeric'] = '0123456789';
	$seedings['alphanum'] = 'abcdefghijklmnopqrstuvwqyz0123456789';
	$seedings['hexidec'] = '0123456789abcdef';
	
	// Choose seed
	if (isset($seedings[$seeds]))
	{
		$seeds = $seedings[$seeds];
	}
	
	// Seed generator
	list($usec, $sec) = explode(' ', microtime());
	$seed = (float) $sec + ((float) $usec * 100000);
	mt_srand($seed);
	
	// Generate
	$str = '';
	$seeds_count = strlen($seeds);
	
	for ($i = 0; $length > $i; $i++)
	{
		$str .= $seeds{mt_rand(0, $seeds_count - 1)};
	}
	
	return $str;
}
 str_rand(15, 'alphanum');

?>

<?php 
	
	$timess = $_POST['timeset'];

if(isset($_REQUEST['getpass'])) { 
	 
	 if(md5($_POST['userid']) == ($_SESSION['userid'])){
	
	$_SESSION['key'] = $ky = $_POST['randpass'];
	$phone = $_SESSION['mobno'];


$currentDate = strtotime($timess);
$futureDate = $currentDate+(60*2);
$formatDate = date("H:i:s", $futureDate);
//echo $formatDate;
	$bg= "truncate getpass";
	mysql_query($bg);
	$ins ="insert into getpass(userid,password,gettime)values
	('".$_SESSION['userid']."','".$_POST['randpass']."','".$formatDate."')";
	
	//echo $ins;
    //exit;
	
	
	
	 echo "<script type='text/javascript'>window.open('http://bulksmsindia.mobi/sendurlcomma.aspx?user=20064973&pwd=crisp1996&senderid=PROJEC&mobileno=$phone&msgtext=Welcome to Online Net Banking Please Note your Password is $ky &smstype=4&priority=High')</script>";  
 
 	 //echo "<meta http-equiv='refresh' content='0;url=http://ubaid.tk/sms/sms.aspx?uid=9994482552&pwd=408351
 // &msg=Welcome to Online Net Banking Please Note your Password is $ky  $str&phone=$phone&provider=site2sms'>";
  
 
 mysql_query($ins);
	
	echo '<script type="text/javascript">alert("Send Successfully");</script>';
	
  

  
 // exit;
	}
		
	else {
	
		echo '<script type="text/javascript">alert("Ivalid Login");</script>';
	}
 //header('location:login.php');
 
	
}

?>
<?php 

if(isset($_REQUEST['submit'])){
	
	$sql = "Select * from getpass  ";
	//echo $sql;
	$gh=mysql_query($sql);
  $row=mysql_fetch_object($gh);
		
        $userids = $row->userid;
		$pass = $row->password;
		$times = $row->gettime;
		
		/*$x=$times;
		$cuts=explode(":", $x);
		echo $cuts[0];
		echo $cuts[1];
		echo $cuts[2];*/
		
		
		//echo "0".$_POST['timeset'];
		
		if($_POST['timeset'] >= "1:00:00" || $_POST['timeset'] <= "9:00:00"){
			$timeset = "0".$_POST['timeset'];
			}
			else{
				$timeset = $_POST['timeset'];
			}
	

if(md5($_POST['userid']) == $userids && $_POST['password'] == $pass && $timeset < $times){

header('location:newaccount.php');

}


else{
	echo '<script type="text/javascript">alert("Ivalid Login");</script>';
}
}


?>

