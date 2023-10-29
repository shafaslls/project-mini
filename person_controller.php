<?php
session_start();
include_once 'koneksi.php';
include_once 'models/Person.php';

$nama = $_POST['nama']; 
$asal_kampus = $_POST['asal_kampus']; 
$gender = $_POST['gender'];
$idagama = $_POST['idagama'];
$tempat_lahir = $_POST['tempat_lahir']; 
$tgl_lahir = $_POST['tgl_lahir']; 
$sosmed = $_POST['sosmed']; 
$email = $_POST['email']; 
$alamat = $_POST['alamat'];
$nohp = $_POST['nohp'];
$tombol = $_POST['proses']; 

$data = [
    $nama, 
    $asal_kampus, 
    $gender,
    $idagama,
    $tempat_lahir, 
    $tgl_lahir,
    $sosmed,
    $email,
    $alamat,
    $nohp,
];

$person = new Person();
switch ($tombol) {
    case 'simpan':
        $person->simpan($data); break;
    case 'ubah':
        $data[] = $_POST['idx'];
        $person->ubah($data); break;
    case 'hapus': 
        $person->hapus($_POST['id']); break;
    default:
        header('location:index.php?hal=person_list'); break;
}

header('location:index.php?hal=person_list');