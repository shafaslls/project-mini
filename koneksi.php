<?php
$dsn = 'mysql:dbname=db_kontak;host=localhost';
$user = 'root';
$password = '';

try {
    $dbk = new PDO($dsn, $user, $password);
    $dbk->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e) {
    echo 'Terjadi kesalahan koneksi dengan sebab '.$e->getMessage();
}
?>