<?php
include_once 'koneksi.php';
include_once 'models/Agama.php';

$nama = $_POST['nama']; 
$tombol = $_POST['proses']; 

$data = [
    $nama, 
];

$agama = new Agama();
switch ($tombol) {
    case 'simpan':
        $agama->simpan($data); break;
    case 'ubah':
        $data[] = $_POST['idx'];
        $agama->ubah($data); break;
    case 'hapus': 
        $agama->hapus($_POST['id']); break;
    default:
        header('location:index.php?hal=agama_form'); break;
}

header('location:index.php?hal=agama_list');