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
</head>
<body>
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
    <div id='cssmenu'>
<ul>
   <li><a href='newaccount.php'><span>Account Cration</span></a></li>
   <li ><a href='deposit.php'><span>Deposit</span></a></li>
    <li  class='active'><a href='fundtrans.php'><span>Fund Transfer</span></a></li>
     <li><a href='balance.php'><span>Balance Enquiry</span></a></li>
      <li><a href='index.php'><span>Logout</span></a></li>
     
 
</ul>
</div>

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
    <form action="fundtrans.php" method="post" enctype="multipart/form-data" name="admindes"
    onsubmit="return validation()">
  <tr>
    <th colspan="2" scope="col" align="center">
    <img src="images/fundtrans.png" width="236" height="130" style="margin-left:30px;" /></th>
    </tr>
  <tr>
    <th width="45%" scope="row"></th>
    <td width="55%" align="left">&nbsp;</td>
  </tr>
  <tr>
    <th scope="row" align="right"> Account No:</th>
    <td align="left"><label for="username4"></label>
      <input type="text" name="accno" id="accno" /></td>
  </tr>
  <tr>
    <th scope="row" align="right">Pin no :</th>
    <td align="left"><label for="username3"></label>
      <input type="password" name="pinno" id="pinno" /></td>
  </tr>
  <tr>
    <th scope="row" align="right">Borrower Account :</th>
    <td align="left"><label for="username"></label>
      <input type="text" name="boraccno" id="boraccno" /></td>
  </tr>
  <tr>
    <th scope="row" align="right">Borrower Pin  :</th>
    <td align="left"><label for="username6"></label>
      <input type="password" name="borpinno" id="borpinno" /></td>
  </tr>
  <tr>
    <th scope="row" align="right">Transfer amount  :</th>
    <td align="left"><label for="username2"></label>
      <input type="text" name="depamt" id="depamt" /></td>
  </tr>
  <tr>
    <th scope="row" align="right">&nbsp;</th>
    <td align="left">&nbsp;</td>
  </tr>
  <tr>
    <th colspan="2" align="center"  scope="row"><input type="submit" name="submit" id="submit" value="Submit" style="margin-left:30px;"/></th>
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

document.getElementById('accno').focus();


function validation() {
	
	var frm = document.admindes;
	
	   if(frm.accno.value =="") { alert("Please Enter the Account no."); frm.accno.focus(); return false }
	   if(frm.pinno.value =="") { alert("Please Enter the Pin No."); frm.pinno.focus(); return false }
	    if(frm.boraccno.value =="") { alert("Please Enter the Borrower Account no."); frm.boraccno.focus(); return false }
	   if(frm.borpinno.value =="") { alert("Please Enter the Borrower Pin No."); frm.borpinno.focus(); return false }
	    if(frm.depamt.value =="") { alert("Please Enter the Deposit Amount."); frm.depamt.focus(); return false }
	

	
	
	return true;
}

</script>

<?php 

if(isset($_REQUEST['submit'])) { 

		
	$sql ="SELECT * FROM deposit where dep_accno = '".$_POST['boraccno']."'";
//	echo $sql;
	$my=mysql_query($sql);
	$mjd=mysql_fetch_object($my);
	
	$accno = $mjd->dep_accno;
	$pinno = $mjd->dep_pinno;
	$amt = $mjd->dep_amt;
	
	$totamt = $amt + $_POST['depamt'];
	

	
	$ups="Update deposit set dep_amt = '".$totamt."' where dep_accno = '".$_POST['boraccno']."'";
	//echo $ups;
	//exit;
	mysql_query($ups);
	
	
	$sqsl ="SELECT * FROM deposit where dep_accno = '".$_POST['accno']."'";
	$my=mysql_query($sqsl);
	$rowtr=mysql_fetch_object($my);
	$amts=$rowtr->dep_amt;
	$lessamt=$amts-$_POST['depamt'];
	//echo $lessamt;
	$upsd="Update deposit set dep_amt = '".$lessamt."' where dep_accno = '".$_POST['accno']."'";
	//echo $upsd;
	//exit;
	mysql_query($upsd);
	
	header('location:fundtrans.php');
	

}
?>
