<?php
$agama = new Agama(); 
$rs = $agama->index(); 
$g_gender = ['Laki-Laki','Perempuan'];
$id = $_REQUEST['id'];
$person = new Person();
if(!empty($id)){
    $row = $person->getPerson($id);
}
else {
    $row = []; 
}
?>
    <div class="container py-2 my-5" id="contact">
        <h2 class="display-3 font-weight-bold text-center gradient-text">Form Kontak</h2>
                    <form  class="form-floating mb-3 col-md-6 mx-auto" id="contact" method="POST" action="person_controller.php">
                        <div class="form-floating mb-3">
                            <input class="form-control" name="nama" value="<?= $row['nama'] ?>" id="nama" type="text" placeholder="Nama Lengkap" data-sb-validations="required" />
                            <label for="nama" class="text-secondary px-2 font-weight-medium ml-1">Nama Lengkap</label>
                            <div class="invalid-feedback" data-sb-feedback="namaLengkap:required">Nama Lengkap is required.</div>
                        </div>
                        <div class="form-floating mb-3">
                            <input class="form-control" name="asal_kampus" value="<?= $row['asal_kampus'] ?>" id="asal_kampus" type="text" placeholder="Asal Kampus" data-sb-validations="required" />
                            <label for="asalKampus" class="text-secondary px-2 font-weight-medium ml-1">Asal Kampus</label>
                            <div class="invalid-feedback" data-sb-feedback="asalKampus:required">Asal Kampus is required.</div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label d-block">Jenis Kelamin</label>
                            <?php
                            foreach($g_gender as $gender) {
                                $cek = ($gender == $row['gender']) ? "checked" : "";
                            ?>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" id="<?= $gender ?>" type="radio" name="gender" value="<?= $gender ?>" data-sb-validations="required" <?= $cek ?> />
                                <label class="form-check-label" for="<?= $gender ?>"><?= $gender ?></label>
                            </div>
                            <?php } ?>
                            <div class="invalid-feedback" id="jenisKelaminFeedback">One option is required.</div>
                        </div>
                        <div class="form-floating mb-3">
                            <select class="form-select" name="idagama" id="agamaPerson" aria-label="Agama">
                                <option value="-- Pilih Agama --">-- Pilih Agama --</option>
                                <?php
                                foreach($rs as $agama){
                                    $sel = ($agama['id'] == $row['idagama']) ? "selected" : "" ;
                                ?>    
                                    <option value="<?= $agama['id'] ?>" <?= $sel ?>><?= $agama['nama'] ?></option>
                                <?php } ?>
                            </select>
                            <label for="agamaPerson">Agama</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input class="form-control" name="tempat_lahir" value="<?= $row['tempat_lahir'] ?>" id="tempat_lahir" type="text" placeholder="Tempat Lahir" data-sb-validations="required" />
                            <label for="tempat_lahir" class="text-secondary px-2 font-weight-medium ml-1">Tempat Lahir</label>
                            <div class="invalid-feedback" data-sb-feedback="tempatLahir:required">Tempat Lahir is required.</div>
                        </div>
                        <div class="form-floating mb-3">
                            <input class="form-control" name="tgl_lahir" value="<?= $row['tgl_lahir'] ?>" id="tgl_lahir" type="date" placeholder="Tanggal Lahir" data-sb-validations="required" />
                            <label for="tgl_lahir" class="text-secondary px-2 font-weight-medium ml-1">Tanggal Lahir</label>
                            <div class="invalid-feedback" data-sb-feedback="tempatLahir:required">Tanggal Lahir is required.</div>
                        </div>
                        <div class="form-floating mb-3">
                            <input class="form-control" name="sosmed" value="<?= $row['sosmed'] ?>" id="sosmed" type="text" placeholder="Sosmed" data-sb-validations="required" />
                            <label for="sosmed" class="text-secondary px-2 font-weight-medium ml-1">Sosmed</label>
                            <div class="invalid-feedback" data-sb-feedback="sosmed:required">Sosmed is required.</div>
                        </div>
                        <div class="form-floating mb-3">
                            <input class="form-control" name="email" value="<?= $row['email'] ?>" id="email" type="text" placeholder="Email" data-sb-validations="" />
                            <label for="email" class="text-secondary px-2 font-weight-medium ml-1">Email</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input class="form-control" name="alamat" value="<?= $row['alamat'] ?>" id="alamat" type="text" placeholder="Alamat" data-sb-validations="required" />
                            <label for="alamat" class="text-secondary px-2 font-weight-medium ml-1">Alamat</label>
                            <div class="invalid-feedback" data-sb-feedback="alamat:required">Alamat is required.</div>
                        </div><div class="form-floating mb-3">
                            <input class="form-control" name="nohp" value="<?= $row['nohp'] ?>" id="noHp" type="text" placeholder="No Hp" data-sb-validations="" />
                            <label for="noHp" class="text-secondary px-2 font-weight-medium ml-1">No Hp</label>
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
                        <a href="index.php?hal=person_list" class="btn btn-danger" name="unproses">Kembali</a>
                        </div>
                    </form>
       
    </div>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
