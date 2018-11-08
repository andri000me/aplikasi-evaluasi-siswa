<?php
	$user ="root";
	$pass = "";
	$serv = "localhost";
	$db_n = "usbn_db";

	$con = mysql_connect($serv,$user,$pass) or die("Koneksi Bermasalah");
	mysql_select_db($db_n);

	
	$ambilSemuaSoal = "SELECT id_tes, id_user, list_jawaban FROM tr_ikut_ujian WHERE id_tes='29' or id_tes='31' or id_tes='32'";
	$jalankan = mysql_query($ambilSemuaSoal) or die("Error :".mysql_error());
	$jumlah_soal_semua = mysql_num_rows($jalankan);
	echo "Jumlah Soal : $jumlah_soal_semua <br>";
	
	$c = 1;
	
	while ($row=mysql_fetch_assoc($jalankan)) {
		$ambilPersoal = mysql_query("SELECT list_jawaban FROM tr_ikut_ujian WHERE id_tes='".$row['id_tes']."' and id_user='".$row['id_user']."'");
		$get_jawaban = mysql_fetch_assoc($ambilPersoal);

		$pc_jawaban = explode(",", $get_jawaban['list_jawaban']);
		//print_r ($pc_jawaban);
		//echo "<br>";
		$id_tes = $row['id_tes'];
		$id_user = $row['id_user'];
		$jumlah_benar = 0;
		$nilai_bobot 	= 0;
		$total_bobot	= 0;
		$jumlah_soal = sizeof($pc_jawaban);

		for ($x = 0; $x < $jumlah_soal; $x++) {
				$pc_dt = explode(":", $pc_jawaban[$x]);
				$id_soal 	= $pc_dt[0];
				$jawaban 	= $pc_dt[1];
				$ragu 		= $pc_dt[2];

				$cariJawaban = mysql_query("SELECT bobot, jawaban FROM m_soal WHERE id = '".$id_soal."'");
				$cek_jwb 	= mysql_fetch_object($cariJawaban);

				$total_bobot = $total_bobot + $cek_jwb->bobot;
				
				if (($cek_jwb->jawaban == $jawaban)) {
					//jika jawaban benar 
					$jumlah_benar++;
					$nilai_bobot = $nilai_bobot + $cek_jwb->bobot;
					
				} else {
					//jika jawaban salah
					
				}
			}
			$nilai = ($jumlah_benar / $jumlah_soal)  * 100;
			$nilai_bobot = ($nilai_bobot / $total_bobot)  * 100;

			$updateSoal = mysql_query("UPDATE tr_ikut_ujian SET jml_benar = '".$jumlah_benar."', nilai = '".$nilai."', nilai_bobot = ".$nilai_bobot.", status = 'N' WHERE id_tes = '$id_tes' AND id_user = '$id_user'");
				if($updateSoal){
					echo "$c Berhasil <br>";
				}else{
					die('Ada Error : <br> '.mysql_error());
				}
				$c++;
	}

	

	/*$get_jawaban = $this->db->query("SELECT list_jawaban FROM tr_ikut_ujian WHERE id_tes = '$uri4' AND id_user = '".$a['sess_konid']."'")->row_array();
			$pc_jawaban = explode(",", $get_jawaban['list_jawaban']);

			$jumlah_benar 	= 0;
			$jumlah_salah 	= 0;
			$jumlah_ragu  	= 0;
			$nilai_bobot 	= 0;
			$total_bobot	= 0;
			$jumlah_soal	= sizeof($pc_jawaban);

			for ($x = 0; $x < $jumlah_soal; $x++) {
				$pc_dt = explode(":", $pc_jawaban[$x]);
				$id_soal 	= $pc_dt[0];
				$jawaban 	= $pc_dt[1];
				$ragu 		= $pc_dt[2];

				$cek_jwb 	= $this->db->query("SELECT bobot, jawaban FROM m_soal WHERE id = '".$id_soal."'")->row();
				$total_bobot = $total_bobot + $cek_jwb->bobot;
				
				if (($cek_jwb->jawaban == $jawaban)) {
					//jika jawaban benar 
					$jumlah_benar++;
					$nilai_bobot = $nilai_bobot + $cek_jwb->bobot;
					$q_update_jwb = "UPDATE m_soal SET jml_benar = jml_benar + 1 WHERE id = '".$id_soal."'";
				} else {
					//jika jawaban salah
					$jumlah_salah++;
					$q_update_jwb = "UPDATE m_soal SET jml_salah = jml_salah + 1 WHERE id = '".$id_soal."'";
				}
				$this->db->query($q_update_jwb);
			}

			$nilai = ($jumlah_benar / $jumlah_soal)  * 100;
			$nilai_bobot = ($nilai_bobot / $total_bobot)  * 100;

			$this->db->query("UPDATE tr_ikut_ujian SET jml_benar = ".$jumlah_benar.", nilai = ".$nilai.", nilai_bobot = ".$nilai_bobot.", status = 'N' WHERE id_tes = '$id_tes' AND id_user = '".$a['sess_konid']."'");
			$a['status'] = "ok";
			j($a);
			exit;*/


?>