<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<body>
<?php
include "config.php";
$uid=$_GET['uid'];
$con=mysql_query("select * from register where uid='$uid'");
	while($row=mysql_fetch_array($con))
	{
	$start=$row['start_limit'];
	$end=$row['end_limit'];
	$rand=mt_rand($start,$end);
	mysql_query("update register set random_num='$rand' where uid='$uid'");
	$func=$row['func'];
	$c=$row['common'];
	$a=$row['a'];
	echo "Your Random Salt is $rand".'<br>';
	//echo "Your Function is $func".'<br>';
	}
?>
</body>
</html>
