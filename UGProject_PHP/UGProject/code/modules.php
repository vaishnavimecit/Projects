<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual Password Authentication Scheme To Protect Password</title>
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
Virtual Password Authentication Scheme To Protect Password
</div>
<div id="content">
<div id="normal_content">
In this paper, we present a password protection scheme that involves a small amount of human computing in an Internet based environment, which will be resistant to a phishing scam, a Trojan horse, and shoulder-surfing attacks. We propose a virtual password concept that requires a small amount of human computing to secure users’ passwords in on-line environments. We adopt user-determined randomized linear generation functions to secure users’ passwords based on the fact that a server has more information than any adversary does. We analyze how the proposed scheme defends against phishing, Trojan horses, such as key loggers, and shoulder surfing attacks. To the best of our knowledge, our virtual password mechanism is the first one which is able to defend against all three attacks together.

To authenticate a user, a system (S) needs to verify a user (U) via the user’s password (P) which the user provides. In this procedure, S authenticates U by using U and P, which is denoted as: S 􀃆U: U, P. All of S, U, and P are fixed. It is very reasonable that a password should be constant for the purpose of easily remembering it. However, the price of easy to remember is that the password can be stolen by others and then used to access the victim’s account. At the same time, we cannot put P in a randomly variant form, which will make it impossible for a user to remember the password. To confront such a challenge, we propose a scheme using a new concept of virtual password.

A virtual password is a password which cannot be applied directly but instead generates a dynamic password which is submitted to the server for authentication. A virtual password P is composed of two parts, a fixed alphanumeric F and a function B from the domain ψ to ψ, where the ψ is the letter space which can be used as passwords. We have P=(F, B) and B(F, R) = Pd, where R is a random number provided by the server (called the random salt and prompted in the login screen by the server) and Pd is a dynamic password used for authentication. Since we call P=(F, B) a virtual password, we call B a virtual function. The user input includes (ID, Pd), where ID is a user ID. On the server side, the server can also calculate Pd in the same way to compare it with the submitted password.
</div>
</div>
<div id="footer">
All rights reserved @2012 
</div>
</div>
</div>
</div>
</body>
</html>