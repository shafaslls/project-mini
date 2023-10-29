<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<?php
$ar_judul = ['NO','NAMA LENGKAP','ASAL KAMPUS','GENDER','AGAMA','TEMPAT LAHIR','TANGGAL LAHIR','SOSMED','EMAIL','ALAMAT','NO HP','ACTION'];
$person = new Person();
$rs = $person->index();

$keyword = $_GET['keyword']; 
if(!empty($keyword)){
	$rs = $person->cari($keyword); 
}
else{
	$rs = $person->index();
}
?>
<div class="bg-light py-5">
<h3 class="display-3 font-weight-bold text-center gradient-text">Daftar Person</h3>
<nav class="navbar bg-body-tertiary mx-auto">
  <div class="container-fluid">
    <a class="navbar-brand"></a>
    <form class="d-flex" role="search" method="GET">
        <input class="form-control me-2" type="text" name="keyword" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>           
        <input type="hidden" name="hal" value="person_list" />   
    </form>
  </div>
</nav>
<div class="table-responsive">
<table class="table table-striped">
	<thead>
		<tr>
			<?php
				foreach($ar_judul as $jdl){
					echo '<th>'.$jdl.'</th>';
				}
			?>
		</tr>
	</thead>
	<tbody>
		<?php
		$no = 1;
		foreach($rs as $person){
        ?>    
			<tr>
				<td><?= $no ?></td>
				<td><?= $person['nama'] ?></td>
				<td><?= $person['asal_kampus'] ?></td>
				<td><?= $person['gender'] ?></td>
				<td><?= $person['agama_id'] ?></td>
                <td><?= $person['tempat_lahir'] ?></td>
                <td><?= $person['tgl_lahir'] ?></td>
                <td><?= $person['sosmed'] ?></td>
                <td><?= $person['email'] ?></td>
				<td><?= $person['alamat'] ?></td>
                <td><?= $person['nohp'] ?></td>
                <td>
				<form method="POST" action="person_controller.php">
				<a href="index.php?hal=person_detail&id=<?= $person['id'] ?>" 
					title="Detail Person" class="btn btn-info btn-sm">
					<i class="bi bi-eye"></i>
				</a></br>
				<?php
				if($_SESSION['MEMBER']['role'] != 'staff'){
				?>
				<a href="index.php?hal=person_form&id=<?= $person['id'] ?>" 
					title="Ubah Person" class="btn btn-warning btn-sm">
					<i class="bi bi-pencil"></i>
				</a></br>
				<button type="submit" title="Hapus Data" class="btn btn-danger btn-sm"
					    name="proses" value="hapus" onclick="return confirm('Anda Yakin diHapus?')">
						<i class="bi bi-trash"></i>
				</button>
				<?php }?>
				<input type="hidden" name="id" value="<?= $person['id'] ?>" />
				</form> 
                </td>
			</tr>
        <?php    
		$no++;
		}	
		?>
	</tbody>
</table>
	</div>

    