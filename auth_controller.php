<?php
session_start();
include_once 'koneksi.php';
include_once 'models/Member.php';
$username = $_POST['username']; 
$password = $_POST['password']; 
$data = [
    $username,
    $password,
];
$member = new Member();
$rs = $member->auth($data);
if(!empty($rs)){ //---- sukses login ------
    $_SESSION['MEMBER'] = $rs; //data user diemal oleh session
    header('location:index.php?hal=home');
} 
else{ //-------- gagal login ---------
    echo '<script>alert("Username/Password Anda Salah!!!");history-go(-1)</script>';
}

