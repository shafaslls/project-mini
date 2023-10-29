<?php
$agama = new Agama(); 
$rs = $agama->index(); 

?>

<div class="container py-2 my-5" id="contact">
        <h2 class="display-3 font-weight-bold text-center gradient-text">Form Agama</h2>
                    <form  class="form-floating mb-3 col-md-6 mx-auto" id="contact" method="POST" action="agama_controller.php">
                        <div class="form-floating mb-3 row">
                            <input class="form-control" name="nama" value="<?= $row['nama'] ?>" id="nama" type="text" placeholder="Nama " data-sb-validations="required" />
                            <label for="nama" class="text-secondary px-2 font-weight-medium ml-1">Nama </label>
                            <div class="invalid-feedback" data-sb-feedback="nama:required">Nama is required.</div>
                        </div>
                        <div class="text-center">
                        <?php
                        if(empty($id)){ 
                        ?>
                            <button class="btn btn-primary" name="proses" type="submit" value="simpan">Simpan</button>
                        <?php
                        }
                        else{ 
                        ?>
                            <button class="btn btn-success" name="proses" type="submit" value="ubah">Ubah</button>
                            <input type="hidden" name="idx" value="<?= $id ?>" />
                        <?php } ?>
                        <a href="index.php?hal=agama_list" class="btn btn-danger" name="unproses">Kembali</a>
                        </div>
                    </form>
</div>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
