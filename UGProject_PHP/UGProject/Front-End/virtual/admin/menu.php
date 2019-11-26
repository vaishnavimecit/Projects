<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1"/>
<title>Simple Drop Down Menu</title>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
$(document).ready(function () {	
	
	$('#nav li').hover(
		function () {
			//show its submenu
			$('ul', this).slideDown(100);

		}, 
		function () {
			//hide its submenu
			$('ul', this).slideUp(100);			
		}
	);
	
});
	</script>
	
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
<ul id="nav">
	<li><a href="#">Home</a></li>
	<li><a href="#">Blog</a></li>
	<li><a href="#">About</a></li>
    <li><a href="#">Services</a></li>
	<li><a href="#">Contact</a></li>
</ul>
</body>
</html>