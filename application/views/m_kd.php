<div class="row col-md-12 ini_bodi">
  <div class="panel panel-info">
    <div class="panel-heading">Data Mata Pelajaran
      <div class="tombol-kanan">
        <a class="btn btn-success btn-sm tombol-kanan" href="#" onclick="return m_kd_e(0);"><i class="glyphicon glyphicon-plus"></i> &nbsp;&nbsp;Tambah</a>
      </div>
    </div>
    <div class="panel-body">


      <table class="table table-bordered" id="datatabel">
        <thead>
          <tr>
            <th width="5%">No</th>
            <th width="10%">KD ke</th>
            <th width="30%">Deskripsi</th>
            <th width="15%">Mapel</th>
            <th width="10%">Aksi</th>
          </tr>
        </thead>

        <tbody>
        </tbody>
      </table>
    
      </div>
    </div>
  </div>
</div>
                    




<div class="modal fade" id="m_kd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 id="myModalLabel">Data Kompetensi Dasar</h4>
      </div>
      <div class="modal-body">
          <form name="f_kd" id="f_kd" onsubmit="return m_kd_s();">
            <input type="hidden" name="id_kd" id="id_kd" value="0">
              <table class="table table-form">
                <tr><td style="width: 25%">KD Ke</td><td style="width: 75%"><input type="text" class="form-control" name="kd_ke" id="kd_ke" required></td></tr>
                <tr><td style="width: 25%">Deskripsi</td><td style="width: 75%"><input type="text" class="form-control" name="nama" id="nama" required></td></tr>
                <tr><td style="width: 25%">Mapel</td><td style="width: 75%">
                  <select style="width:100%;" class="form-control" id="id_mapel" required name="id_mapel">

                    <?php
                      

                      foreach ($mapel as $key) {
                                               
                    ?>
                    <option value=<?php echo $key['id']  ?>><?php echo $key['nama']  ?></option>
                    
                    <?php
                        }   
                    ?>
                </select>
              </td></tr>
              </table>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary"><i class="fa fa-check"></i> Simpan</button>
        
        <button class="btn" data-dismiss="modal" aria-hidden="true"><i class="fa fa-minus-circle"></i> Tutup</button>
      </div>
        </form>
    </div>
  </div>
</div>
