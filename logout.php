<?php
session_start();
unset($_SESSION['MEMBER']);
header('location:login.php');