<?php

session_start();

require "../settings/konfigurasi.php";

if(isset($_POST['login'])){

    //username and password sent from Form
    $username = trim($_POST['form_username']);
    $password = trim($_POST['form_password']);

	$count = $db->getNumRows('admin',$username,$password);

	if($count > 0 ){
	     $_SESSION['username'] = $username;
	     header('location:index.html');
	     exit;
	 }else{
	     echo 'Username and Password are not found';
	     header('location:index.php');
	 }
}