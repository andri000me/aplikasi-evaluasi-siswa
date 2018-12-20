<div class="row col-md-12 ini_bodi">
  <div class="panel panel-info">
    <div class="panel-heading">Daftar Hasil Tes
      <div class="tombol-kanan">
        <a class="btn btn-danger btn-sm tombol-kanan" href="#" onclick="return m_evaluasi(0);" ><i class="glyphicon glyphicon-heart"></i>&nbsp;&nbsp;EVALUASI</a>
      </div>
    </div>
    <div class="panel-body">


      <table class="table table-bordered" id="datatabel">
        <thead>
          <tr>
            <th width="5%">No</th>
            <th width="20%">Nama Tes</th>
            <th width="25%">Nama Guru</th>
            <th width="20%">Mata Pelajaran</th>
            <th width="10%">Jumlah Soal</th>
            <th width="10%">Waktu</th>
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

<div srty class="modal fade" id="m_evaluasi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 id="myModalLabel">Cetak Evaluasi</h4>
      </div>
      <div class="modal-body">

          <div class="row">
            <div class="col-md-12"> 
              <font>Berdasarkan Nama Ujian</font>
              <?php
                /*  $a="";
                  $b="";
                  if(isset($_GET['id_mapel'])){
                  if(!empty($_GET['id_mapel']) and !empty($_GET['id_kelas'])){
                    $a = $_GET['id_mapel'];
                    $b = $_GET['id_kelas'];
                  }}
                */
              ?> 
              <form name="mapelkelas" id="mapelkelas" method="post" action="<?php echo base_url(); ?>adm/evaluasi1" target="_blank">
              
                <table class="table table-form">
                  <tr>
                    <td style="width: 25%">Nama Ujian</td>
                    <td style="width: 75%">
                        <select class="form-control" name="id_mapel" id="id_mapel" required>

                          <option value="-1" selected>Pilih...</option>

                          <?php

                             foreach ($mapel as $key) {
                                               
                          ?>
                          <option value=<?php echo $key['id']  ?>><?php echo $key['nama']." - "; echo $key['nama_ujian']." - "; echo $key['nama_kelas']; ?></option>
                          
                          <?php
                              }   
                          ?>

                        </select>
                    </td>
                  </tr>
                  
                  <tr>
                    <td></td>
                    <td align="right"><button class="btn btn-primary"><i class="fa fa-print"></i> &nbsp; &nbsp;Cetak</button></td>
                  </tr>
                </table>
              </form>
            </div>
          
            <!------ Kolom --->

           
            </div>
            <hr width="100%">
      </div>
      <div class="modal-footer">
                
        <button class="btn" data-dismiss="modal" aria-hidden="true"><i class="fa fa-minus-circle"></i> Tutup</button>
      </div>
        


    </div>
  </div>
</div>