<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-2">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<?php
$id = $_REQUEST['id']; 
$model = new Person(); 
$rs  = $model->getPerson($id); 

$model = new Agama();
$agama = $model->getAgama($rs['agama_id']);
?>

<div class="container mt-3">
    <div class="card">
        <div class="card-header">
            <h5 class="card-title"><?= $rs['nama'] ?></h5>
        </div>
        <div class="card-body">
                            Asal Kampus: <?= $rs['asal_kampus'] ?> <br/>
                            Gender: <?= $rs['gender'] ?> <br/>
                            Agama: <?= $agama['nama'] ?> <br/>  
                            Tempat Lahir: <?= $rs['tempat_lahir'] ?> <br/>
                            Tanggal Lahir: <?= $rs['tgl_lahir'] ?> <br/>
                            Sosmed: <?= $rs['sosmed'] ?> <br/>
                            Email: <?= $rs['email'] ?> <br/>
                            Alamat: <?= $rs['alamat'] ?> <br/>
                            No Hp: <?= $rs['nohp'] ?> <br/></div> 
        <div class="card-footer">
            <a href="index.php?hal=person_list" class="btn btn-danger">Kembali</a>
        </div>
    </div>
</div>

</body>
</html>