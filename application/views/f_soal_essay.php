<div class="row col-md-12 ini_bodi">
  <div class="panel panel-info">
    <div class="panel-heading">Input Soal Essay</div>
    <div class="panel-body">
      <?php echo form_open_multipart(base_url()."adm/m_soal_essay/simpan", "class='form-horizontal'"); ?>
          <input type="hidden" name="id" id="id" value="<?php echo $d['id']; ?>">
          <input type="hidden" name="mode" id="mode" value="<?php echo $d['mode']; ?>">
          <div id="konfirmasi"></div>

            <div class="form-group fgsoal">
              <div class="col-md-2"><label>Mapel</label></div>
              <div class="col-md-10"><?php echo form_dropdown('id_mapel', $p_mapel, $d['id_mapel'], 'class="form-control" id="id_mapel" required'); ?></div>
            </div>
            <div class="form-group fgsoal">
              <div class="col-md-2"><label>Guru</label></div>
              <div class="col-md-10"><?php echo form_dropdown('id_guru', $p_guru, $d['id_guru'], 'class="form-control" id="id_guru" required'); ?></div>
            </div>

            <div class="form-group fgsoal">
              <div class="col-md-2"><label>Teks Soal</label></div>
              <div class="col-md-3">
                <input type="file" name="gambar_soal" id="gambar_soal" class="btn btn-info upload">
                <?php 
                if (is_file('./upload/gambar_soal/'.$d['file'])) {
                  echo tampil_media('./upload/gambar_soal/'.$d['file'],"100%");
                }
                ?>
              </div>
              <div class="col-md-7">
                <textarea class="form-control" id="editornya" style="height: 50px;" name="soal"><?php echo $d['soal']; ?></textarea>
              </div>
            </div>
          	<div class="form-group" style="margin-top: 20px">
              <div class="col-md-12" style="text-align:right">
                <button type="submit" class="btn btn-info"><i class="fa fa-check"></i> Simpan</button>
                <a href="<?php echo base_url(); ?>adm/m_soal_essay/pilih_mapel/<?php echo $d['id_mapel']; ?>" class="btn btn-default"><i class="fa fa-minus-circle"></i> Kembali</a>
              </div>
            </div>
            
  
            
      </form>
    </div><!-- panel body-->
  </div>
</div>
</div>
