
<?php
$ar_judul = ['NO','NAMA','ACTION'];
$agama = new Agama();
$rs = $agama->index();
?>
<div class="bg-light py-5">
<h3 class="display-3 font-weight-bold text-center gradient-text">Daftar Agama</h3>
<a href="index.php?hal=agama_form" class="btn btn-primary">Tambah</a>
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
		foreach($rs as $agama){
        ?>    
			<tr>
				<td><?= $no ?></td>
				<td><?= $agama['nama'] ?></td>
                <td>
				<form method="POST" action="agama_controller.php">
				<?php
				if($_SESSION['MEMBER']['role'] != 'staff'){
				?>
				<button type="submit" title="Hapus Data" class="btn btn-danger btn-sm"
					    name="proses" value="hapus" onclick="return confirm('Anda Yakin diHapus?')">
						<i class="bi bi-trash"></i>
				</button>
				<?php }?>
				<input type="hidden" name="id" value="<?= $agama['id'] ?>" /> 
                </td>
				</form>
			</tr>
        <?php    
		$no++;
		}	
		?>
	</tbody>
</table>
	</div>

    