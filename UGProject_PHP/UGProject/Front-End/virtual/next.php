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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual Password Authentication </title>
<link rel="stylesheet" href="style.css" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
        <script type="text/javascript">
$(document).ready(function(){
                $('#submit').click(function(){
                    var name = $('#name').val();
                    var msg = $('#msg').val();
                    var captcha = $('#captcha').val();
                    
                    if( name.length == 0){
                        $('#name').addClass('error');
                    }
                    else{
                        $('#name').removeClass('error');
                    }

                    if( msg.length == 0){
                        $('#msg').addClass('error');
                    }
                    else{
                        $('#msg').removeClass('error');
                    }

                    if( captcha.length == 0){
                        $('#captcha').addClass('error');
                    }
                    else{
                        $('#captcha').removeClass('error');
                    }
                    
                    if(name.length != 0 && msg.length != 0 && captcha.length != 0){
                        return true;
                    }
                    return false;
                });

                var capch = '<?php echo $cap; ?>';
                if(capch != 'notEq'){
                    if(capch == 'Eq'){
                       $('.cap_status').html("Your form is successfully Submitted ").fadeIn('slow').delay(3000).fadeOut('slow');						
                    }else{
                        $('.cap_status').html("Human verification Wrong!").addClass('cap_status_error').fadeIn('slow');
                    }
                }
                
                

            });
function MM_validateForm() { //v4.0
  if (document.getElementById){
    var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
    for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=document.getElementById(args[i]);
      if (val) { nm=val.name; if ((val=val.value)!="") {
        if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
          if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
        } else if (test!='R') { num = parseFloat(val);
          if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
          if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
      } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
    } if (errors) alert('The following error(s) occurred:\n'+errors);
    document.MM_returnValue = (errors == '');
} }
        </script>
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
	body {font-family:arial; font-size:12px;}
	
	/* remove the list style */
	#nav {
		margin:0; 
		padding:0; 
		list-style:none;
	}	
	
		/* make the LI display inline */
		/* it's position relative so that position absolute */
		/* can be used in submenu */
		#nav li {
			float:left; 
			display:block; 
			width:194px; 
			position:relative;
			z-index:500; 
			margin:0 0.5px;
			background-image:url(images/menu_back.jpg);
			background-repeat:repeat-x;
		}
		
		/* this is the parent menu */
		#nav li a {
			display:block; 
			padding:15px 2px 0 2px; 
			font-weight:700;  
			height:35px; 
			text-decoration:none; 
			color:#fff; 
			text-align:center; 
			color:#fff;
		}

		#nav li a:hover {
			background-color:#1b2b72;
		}
	
		/* you can make a different style for default selected value */
		#nav a.selected {
			color:#f00;
		}
	</style>
</head>
<body>
<div id="header">
<div id="header_background">
<div id="total">
<ul id="nav">
	<li><a href="index.php">Home</a></li>
	<li><a href="abstract.php">Abstract</a></li>
	<li><a href="existing.php">Existing System</a></li>
    <li><a href="proposed.php">Proposed</a></li>
	<li><a href="modules.php">Modules</a></li>
</ul>
<div id="title">
Virtual Password Authentication
</div>
<div id="passport">
<!--<a href="register.php?uid=<?php echo $uid; ?>">Change Password</a>-->
<form name="passport" action="" method="post" enctype="multipart/form-data" onsubmit="">
<table cellpadding="10" cellspacing="0" border="0" style="padding-left:30px;">
<tr><td colspan="2"><h1>Online Passport Application</h1></td></tr>
<tr><td>Spouse Name</td><td>
<?php

$sqls = "Select * from passport where uid = '".$_SESSION['uid']."' ";
//echo $sqls;
//exit;
$frt=mysql_query($sqls);
$rovs=mysql_fetch_object($frt);

 $marst = $rovs->marital;

 ?>
 <?php 
 if($marst <> "Married"){
 ?>
<input name="spouse" type="text" disabled="disabled" required="required" id="spouse" value="" ><?php } else { ?>
<input name="spouse" type="text" required="required" id="spouse" value="" ><?php } ?>
</td>
<td>Nationality</td><td><select name="marital" style="width:150px;" required="required">
<option value="">--Select Nationality--</option>
        <option value=”AF”>Afghan</option>
        <option value=”AX”>Åland Islander</option>
        <option value=”AL”>Albanianr</option>
        <option value=”DZ”>Algerian</option>
        <option value=”AS”>American Samoan</option>
        <option value=”AD”>Andorran</option>
        <option value=”AO”>Angolan</option>
        <option value=”AI”>Anguillan</option>
        <option value=”AG”>of Antigua and Barbuda</option>
        <option value=”AR”>Argentinian</option>
        <option value=”AM”>Armenian</option>
        <option value=”AW”>Aruban</option>
        <option value=”AU”>Australian</option>
        <option value=”AT”>Austrian</option>
        <option value=”AZ”>Azerbaijani</option>
        <option value=”BS”>Bahamian</option>
        <option value=”BH”>Bahraini</option>
        <option value=”BD”>Bangladeshi</option>
        <option value=”BB”>Barbadian</option>
        <option value=”BY”>Belarusian</option>
        <option value=”BE”>Belgian</option>
        <option value=”BZ”>Belizean</option>
        <option value=”BJ”>Beninese</option>
        <option value=”BM”>Bermudian</option>
        <option value=”BT”>Bhutanese</option>
        <option value=”BO”>Bolivian</option>
        <option value=”BA”>of Bosnia and Herzegovina</option>
        <option value=”BW”>Botswanan</option>
        <option value=”BR”>Brazilian</option>
        <option value=”VG”>British Virgin Islander</option>
        <option value=”BN”>Bruneian</option>
        <option value=”BG”>Bulgarian</option>
        <option value=”BF”>Burkinabe</option>
        <option value=”MM”>of Burma/Myanmar</option>
        <option value=”BI”>Burundian</option>
        <option value=”KH”>Cambodian</option>
        <option value=”CM”>Cameroonian</option>
        <option value=”CA”>Canadian</option>
        <option value=”CV”>Cape Verdean</option>
        <option value=”KY”>Caymanian</option>
        <option value=”CF”>Central African</option>
        <option value=”TD”>Chadian</option>
        <option value=”CL”>Chilean</option>
        <option value=”CN”>Chinese</option>
        <option value=”CX”>Christmas Islander</option>
        <option value=”CC”>Cocos Islander</option>
        <option value=”CO”>Colombian</option>
        <option value=”KM”>Comorian</option>
        <option value=”CG”>Congolese</option>
        <option value=”CK”>Cook Islander</option>
        <option value=”CR”>Costa Rican</option>
        <option value=”CI”>Ivorian</option>
        <option value=”HR”>Croat</option>
        <option value=”CU”>Cuban</option>
        <option value=”CW”>Curaçaoan</option>
        <option value=”CY”>Cypriot</option>
        <option value=”CZ”>Czech</option>
        <option value=”CD”>of the Democratic Republic of the Congo</option>
        <option value=”DK”>Dane</option>
        <option value=”DJ”>Djiboutian</option>
        <option value=”DM”>Dominican</option>
        <option value=”DO”>Dominican</option>
        <option value=”TL”>East Timorese</option>
        <option value=”EC”>Ecuadorian</option>
        <option value=”EG”>Egyptian</option>
        <option value=”SV”>Salvadorian</option>
        <option value=”GQ”>Equatorial Guinean</option>
        <option value=”ER”>Eritrean</option>
        <option value=”EE”>Estonian</option>
        <option value=”ET”>Ethiopian</option>
        <option value=”FO”>Faeroese</option>
        <option value=”FK”>Falkland Islander</option>
        <option value=”FJ”>Fijian</option>
        <option value=”FI”>Finn</option>
        <option value=”FR”>Frenchman; Frenchwoman</option>
        <option value=”GF”>Guianese</option>
        <option value=”PF”>Polynesian</option>
        <option value=”GA”>Gabonese</option>
        <option value=”GM”>Gambian</option>
        <option value=”GE”>Georgian</option>
        <option value=”DE”>German</option>
        <option value=”GH”>Ghanaian</option>
        <option value=”GI”>Gibraltarian</option>
        <option value=”EL”>Greek</option>
        <option value=”GL”>Greenlander</option>
        <option value=”GD”>Grenadian</option>
        <option value=”GP”>Guadeloupean</option>
        <option value=”GU”>Guamanian</option>
        <option value=”GT”>Guatemalan</option>
        <option value=”GG”>of Guernsey</option>
        <option value=”GN”>Guinean</option>
        <option value=”GW”>Guinea-Bissau national</option>
        <option value=”GY”>Guyanese</option>
        <option value=”HT”>Haitian</option>
        <option value=”VA”>of the Holy See/of the Vatican</option>
        <option value=”HN”>Honduran</option>
        <option value=”HK”>Hong Kong Chinese</option>
        <option value=”HU”>Hungarian</option>
        <option value=”IS”>Icelander</option>
        <option value='India'>Indian</option>
        <option value=”ID”>Indonesian</option>
        <option value=”IR”>Iranian</option>
        <option value=”IQ”>Iraqi</option>
        <option value=”IE”>Irishman; Irishwoman</option>
        <option value=”IM”>Manxman; Manxwoman</option>
        <option value=”IL”>Israeli</option>
        <option value=”IT”>Italian</option>
        <option value=”JM”>Jamaican</option>
        <option value=”JP”>Japanese</option>
        <option value=”JE”>of Jersey</option>
        <option value=”JO”>Jordanian</option>
        <option value=”KZ”>Kazakh</option>
        <option value=”KE”>Kenyan</option>
        <option value=”KI”>Kiribatian</option>
        <option value=”KW”>Kuwaiti</option>
        <option value=”KG”>Kyrgyz</option>
        <option value=”LA”>Lao</option>
        <option value=”LV”>Latvian</option>
        <option value=”LB”>Lebanese</option>
        <option value=”LS”>Basotho</option>
        <option value=”LR”>Liberian</option>
        <option value=”LY”>Libyan</option>
        <option value=”LI”>Liechtensteiner</option>
        <option value=”LT”>Lithuanian</option>
        <option value=”LU”>Luxembourger</option>
        <option value=”MO”>Macanese</option>
        <option value=”MG”>Malagasy</option>
        <option value=”MW”>Malawian</option>
        <option value=”MY”>Malaysian</option>
        <option value=”MV”>Maldivian</option>
        <option value=”ML”>Malian</option>
        <option value=”MT”>Maltese</option>
        <option value=”MH”>Marshallese</option>
        <option value=”MQ”>Martinican</option>
        <option value=”MR”>Mauritanian</option>
        <option value=”MU”>Mauritian</option>
        <option value=”YT”>Mahorais</option>
        <option value=”MX”>Mexican</option>
        <option value=”FM”>Micronesian</option>
        <option value=”MD”>Moldovan</option>
        <option value=”MC”>Monegasque</option>
        <option value=”MN”>Mongolian</option>
        <option value=”ME”>Montenegrin</option>
        <option value=”MS”>Montserratian</option>
        <option value=”MA”>Moroccan</option>
        <option value=”MZ”>Mozambican</option>
        <option value=”NA”>Namibian</option>
        <option value=”NR”>Nauruan</option>
        <option value=”NP”>Nepalese</option>
        <option value=”NL”>Dutchman; Dutchwoman; Netherlander</option>
        <option value=”NC”>New Caledonian</option>
        <option value=”NZ”>New Zealander</option>
        <option value=”NI”>Nicaraguan</option>
        <option value=”NE”>Nigerien</option>
        <option value=”NG”>Nigerian</option>
        <option value=”NU”>Niuean</option>
        <option value=”NF”>Norfolk Islander</option>
        <option value=”KP”>North Korean</option>
        <option value=”MP”>Northern Mariana Islander</option>
        <option value=”NO”>Norwegian</option>
        <option value=”OM”>Omani</option>
        <option value=”PK”>Pakistani</option>
        <option value=”PW”>Palauan</option>
        <option value=”PA”>Panamanian</option>
        <option value=”PG”>Papua New Guinean</option>
        <option value=”PY”>Paraguayan</option>
        <option value=”PE”>Peruvian</option>
        <option value=”PH”>Filipino</option>
        <option value=”PN”>Pitcairner</option>
        <option value=”PL”>Pole</option>
        <option value=”PT”>Portuguese</option>
        <option value=”PR”>Puerto Rican</option>
        <option value=”QA”>Qatari</option>
        <option value=”RE”>Reunionese</option>
        <option value=”RO”>Romanian</option>
        <option value=”RU”>Russian</option>
        <option value=”RW”>Rwandan; Rwandese</option>
        <option value=”BL”>of Saint Barthélemy</option>
        <option value=”SH”>Saint Helenian</option>
        <option value=”KN”>Kittsian; Nevisian</option>
        <option value=”LC”>Saint Lucian</option>
        <option value=”MF”>of Saint Martin</option>
        <option value=”PM”>St-Pierrais; Miquelonnais</option>
        <option value=”VC”>Vincentian</option>
        <option value=”WS”>Samoan</option>
        <option value=”SM”>San Marinese</option>
        <option value=”ST”>São Toméan</option>
        <option value=”SA”>Saudi Arabian</option>
        <option value=”SN”>Senegalese</option>
        <option value=”RS”>Serb</option>
        <option value=”SC”>Seychellois</option>
        <option value=”SL”>Sierra Leonean</option>
        <option value=”SG”>Singaporean</option>
        <option value=”SX”>Sint Maartener</option>
        <option value=”SK”>Slovak</option>
        <option value=”SI”>Slovene</option>
        <option value=”SB”>Solomon Islander</option>
        <option value=”SO”>Somali</option>
        <option value=”ZA”>South African</option>
        <option value=”KR”>South Korean</option>
        <option value=”SS”>South Sudanese</option>
        <option value=”ES”>Spaniard</option>
        <option value=”LK”>Sri Lankan</option>
        <option value=”SD”>Sudanese</option>
        <option value=”SR”>Surinamer</option>
        <option value=”SJ”>of Svalbard, of Jan Mayen</option>
        <option value=”SZ”>Swazi</option>
        <option value=”SE”>Swede</option>
        <option value=”CH”>Swiss</option>
        <option value=”SY”>Syrian</option>
        <option value=”TW”>Taiwanese</option>
        <option value=”TJ”>Tajik</option>
        <option value=”TZ”>Tanzanian</option>
        <option value=”TH”>Thai</option>
        <option value=”TG”>Togolese</option>
        <option value=”TK”>Tokelauan</option>
        <option value=”TO”>Tongan</option>
        <option value=”TT”>Trinidadian; Tobagonian</option>
        <option value=”TN”>Tunisian</option>
        <option value=”TR”>Turk</option>
        <option value=”TM”>Turkmen</option>
        <option value=”TC”>Turks and Caicos Islander</option>
        <option value=”TV”>Tuvaluan</option>
        <option value=”UG”>Ugandan</option>
        <option value=”UA”>Ukrainian</option>
        <option value=”AE”>Emirian</option>
        <option value=”UK”>Briton</option>
        <option value=”US”>American;US citizen</option>
        <option value=”UY”>Uruguayan</option>
        <option value=”VI”>US Virgin Islander</option>
        <option value=”UZ”>Uzbek</option>
        <option value=”VU”>Vanuatuan</option>
        <option value=”VE”>Venezuelan</option>
        <option value=”VN”>Vietnamese</option>
        <option value=”WF”>Wallisian</option>
        <option value=”EH”>Sahrawi</option>
        <option value=”YE”>Yemenite</option>
        <option value=”ZM”>Zambian</option>
        <option value=”ZW”>Zimbabwean</option>
</select></td></tr>
<tr><td>Height</td><td><input type="text" name="height" value="" required="required"></td><td>Weight</td><td><input type="text" name="weight" value="" required="required"></td></tr>
<tr><td>Color Of Eyes</td><td><input type="text" name="eye" value="" required="required"></td><td>Color Of Hair</td><td><input type="text" name="hair" value="" required="required"></td></tr>
<tr><td>Identification mark</td><td><input type="text" name="mark" value="" required="required"></td>
<td>Identification mark2</td><td><input type="text" name="mark2" value="" required="required"></td>
<tr><td>City</td><td><select name="city" style="width:150px;" required="required">
<option value="">---Select City---</option>
<option label="Agartala" value="Agartala">Agartala</option>
<option label="Agra" value="Agra">Agra</option>
<option label="Ahmedabad" value="Ahmedabad">Ahmedabad</option>
<option label="Aizwal" value="Aizwal">Aizwal</option>
<option label="Aligarh" value="Aligarh">Aligarh</option>
<option label="Allahabad" value="Allahabad">Allahabad</option>

<option label="Amritsar" value="Amritsar">Amritsar</option>
<option label="Aurangabad" value="Aurangabad">Aurangabad</option>
<option label="Bangalore" value="Bangalore">Bangalore</option>
<option label="Baroda" value="Baroda">Baroda</option>
<option label="Bhopal" value="Bhopal">Bhopal</option>
<option label="Bhubaneshwar" value="Bhubaneshwar">Bhubaneshwar</option>
<option label="Bokaro" value="Bokaro">Bokaro</option>
<option label="Chandigarh" value="Chandigarh">Chandigarh</option>
<option label="Chennai" value="Chennai">Chennai</option>

<option label="Cochin" value="Cochin">Cochin</option>
<option label="Coimbatore" value="Coimbatore">Coimbatore</option>
<option label="Cuttack" value="Cuttack">Cuttack</option>
<option label="Dehradun" value="Dehradun">Dehradun</option>
<option label="Delhi" value="Delhi">Delhi</option>
<option label="Dimapur" value="Dimapur">Dimapur</option>
<option label="Durgapur" value="Durgapur">Durgapur</option>
<option label="Faridabad" value="Faridabad">Faridabad</option>
<option label="Gandhinagar" value="Gandhinagar">Gandhinagar</option>

<option label="Ghaziabad" value="Ghaziabad">Ghaziabad</option>
<option label="Goa" value="Goa">Goa</option>
<option label="Gurgaon" value="Gurgaon">Gurgaon</option>
<option label="Guwahati" value="Guwahati">Guwahati</option>
<option label="Gwalior" value="Gwalior">Gwalior</option>
<option label="Hyderabad" value="Hyderabad">Hyderabad</option>
<option label="Imphal" value="Imphal">Imphal</option>
<option label="Indore" value="Indore">Indore</option>
<option label="Jabalpur" value="Jabalpur">Jabalpur</option>

<option label="Jaipur" value="Jaipur">Jaipur</option>
<option label="Jammu" value="Jammu">Jammu</option>
<option label="Jamnagar" value="Jamnagar">Jamnagar</option>
<option label="Jamshedpur" value="Jamshedpur">Jamshedpur</option>
<option label="Jodhpur" value="Jodhpur">Jodhpur</option>
<option label="Jullundhar" value="Jullundhar">Jullundhar</option>
<option label="Kanpur" value="Kanpur">Kanpur</option>
<option label="Kolhapur" value="Kolhapur">Kolhapur</option>
<option label="Kolkata" value="Kolkata">Kolkata</option>

<option label="Lucknow" value="Lucknow">Lucknow</option>
<option label="Ludhiana" value="Ludhiana">Ludhiana</option>
<option label="Madurai" value="Madurai">Madurai</option>
<option label="Mangalore" value="Mangalore">Mangalore</option>
<option label="Margaon" value="Margaon">Margaon</option>
<option label="Mumbai" value="Mumbai">Mumbai</option>
<option label="Mysore" value="Mysore">Mysore</option>
<option label="Nagpur" value="Nagpur">Nagpur</option>
<option label="Nasik" value="Nasik">Nasik</option>

<option label="NOIDA" value="NOIDA">NOIDA</option>
<option label="Patna" value="Patna">Patna</option>
<option label="Panjim" value="Panjim">Panjim</option>
<option label="Pondicherry" value="Pondicherry">Pondicherry</option>
<option label="Pune" value="Pune">Pune</option>
<option label="Raipur" value="Raipur">Raipur</option>
<option label="Ranchi" value="Ranchi">Ranchi</option>
<option label="Rourkela" value="Rourkela">Rourkela</option>
<option label="Rajkot" value="Rajkot">Rajkot</option>

<option label="Salem" value="Salem">Salem</option>
<option label="Secunderabad" value="Secunderabad">Secunderabad</option>
<option label="Shillong" value="Shillong">Shillong</option>
<option label="Siliguri" value="Siliguri">Siliguri</option>
<option label="Srinagar" value="Srinagar">Srinagar</option>
<option label="Surat" value="Surat">Surat</option>
<option label="Thane" value="Thane">Thane</option>
<option label="Thiruvananthapuram" value="Thiruvananthapuram">Thiruvananthapuram</option>
<option label="Tiruchirapalli" value="Tiruchirapalli">Tiruchirapalli</option>

<option label="Udaipur" value="Udaipur">Udaipur</option>
<option label="Varanasi" value="Varanasi">Varanasi</option>
<option label="Vellore" value="Vellore">Vellore</option>
<option label="Vijaywada" value="Vijaywada">Vijaywada</option>
<option label="Vishakapatnam" value="Vishakapatnam">Vishakapatnam</option>
</select></td>
<td>State</td><td>
<select name="state" required="required">
<option value="Andaman">Andaman</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra">Dadra</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
</select>
</td>
</tr>
<tr><td>Pincode</td><td><input type="text" name="pin" value="" required="required"></td>
  <td>Photo</td>
  <td><input type="file" name="photo" value="" required="required"/></td>
</tr>

<tr>
  <td>Ration card No</td>
  <td><input type="text" name="ratno" value="" required="required" /></td>
  <td>Ration Card</td>
  <td><input type="file" name="ratimg" id="ratimg" value="" required="required"/></td>
</tr>
<tr>
  <td colspan="2"><strong>Payment Process</strong></td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
  <td>Cheque No </td>
  <td><input name="cheque" type="text"  required="required" onblur="MM_validateForm('spouse','','NisNum');return document.MM_returnValue" value=""/></td>
  <td>Bank </td>
  <td><input type="text" name="bankname" value=""  required="required"/></td>
</tr>
<tr>
  <td>Branch</td>
  <td><input type="text" name="branch" value="" required="required" /></td>
  <td>Amount</td>
  <td><input type="text" name="amount" value=""  required="required"/>
    ( <strong>RS.1500</strong>)</td>
</tr>
<tr><td>Prevoius Apply</td><td>
  <select name="prev_apply" style="width:150px;" required="required">
  <option value="">---Select Status---</option>
  <option value="Yes">Yes</option>
  <option value="No">No</option>
  </select>
</td><td>Enter Content Of The Image</td><td><input type="text" name="captcha" id="captcha" maxlength="6" required="required" size="6"/>&nbsp;&nbsp;<img src="captcha.php"/></td></tr>
<tr><td colspan="4"><div class="cap_status"></div></td></tr>
<tr align="center"><td colspan="2"><input type="submit" name="submit" value="Submit" id="button">&nbsp;&nbsp;<input type="reset" value="Clear" name="reset" id="button">&nbsp;&nbsp;<a href="view_status.php"><input type="button" value="Status" id="button"></a></td></tr>
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
$uid=$_SESSION['uid']; 	 	 	 	 	 	 	 	 	 	 	 
$spouse=$_POST['spouse'];
$national=$_POST['marital'];
$height=$_POST['height'];
$weight=$_POST['weight'];
$eye=$_POST['eye'];
$hair=$_POST['hair'];
$mark=$_POST['mark'];
$mark2=$_POST['mark2'];
$city=$_POST['city'];
$state=$_POST['state'];
$pin=$_POST['pin'];

$photo=$_FILES['photo']['name'];

$ratno=$_POST['ratno'];

$ratimg=$_FILES['ratimg']['name'];

$cheque=$_POST['cheque'];

$payment=$_POST['mode'];
$bank=$_POST['bankname'];
$branch=$_POST['branch'];
$amount=$_POST['amount'];
$prev_apply=$_POST['prev_apply'];
$cap = 'notEq';
if(($_SERVER['REQUEST_METHOD']=='POST')) {
   if ($_POST['captcha'] == $_SESSION['cap_code']) {
	   
    $sqls = "update  passport set  spouse='$spouse',national='$national',
	height='$height',weight='$weight',eye='$eye',hair='$hair',
	mark='$mark',mark2='$mark2',city='$city', state='$state',pin='$pin',photo='$photo',cheque='$cheque',
	bank='$bank',branch='$branch',amounts='$amount',
	prev_apply='$prev_apply',ratno='$ratno',ratimg='$ratimg' where uid='$uid'";
	
	//echo $sqls;
	//exit;
	
	mysql_query($sqls);
	
	
move_uploaded_file($_FILES['photo']['tmp_name'],"photo/".$photo);
move_uploaded_file($_FILES['ratimg']['tmp_name'],"ration/".$ratimg);
echo "<script language='javascript'>alert(Registered Successfully);</script>";
$cap = 'Eq';
    } else {
       echo "<script language='javascript'>alert(Cannot Registered);</script>";
        $cap = '';
    }
}
}
?>