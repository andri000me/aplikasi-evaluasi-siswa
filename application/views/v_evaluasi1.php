<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" type="image/ico" href="<?php echo base_url(); ?>___/img/logotb.ico"/>
<title>Evaluasi Kompetensi Dasar</title>
<?php
	$getData = $data_ujian[0];
	//$getkd = $data_kd[0];
	/*print_r($getData);
    echo "<br><br><br>";
	print_r($data_kd);*/
    foreach ($jmlkd as $key) {
        # code...
        $dataPoints[] = array('label' => 'KD'.$key['kd_ke'] , 'y'=>$key['jml_kd']);
    }
    
	
	
echo "<br><br><br>";
    echo count($jmlkd); echo "<br><pre>";
    print_r($jmlkd);
   echo "<br><br><pre>";
    print_r($jmlkdsiswa);echo "</pre>";
    echo "</pre><br><br><pre>";
    print_r($tampung_kd_siswa);echo "</pre>";
	//print_r($arr);
	print_r($dataPoints);
?>
<style type="text/css">

body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	background-color: #999;
	margin: 0;
	padding: 0;
	color: #000;
}

/* ~~ Element/tag selectors ~~ */
ul, ol, dl { /* Due to variations between browsers, it's best practices to zero padding and margin on lists. For consistency, you can either specify the amounts you want here, or on the list items (LI, DT, DD) they contain. Remember that what you do here will cascade to the .nav list unless you write a more specific selector. */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* removing the top margin gets around an issue where margins can escape from their containing div. The remaining bottom margin will hold it away from any elements that follow. */
	padding-right: 15px;
	padding-left: 15px; /* adding the padding to the sides of the elements within the divs, instead of the divs themselves, gets rid of any box model math. A nested div with side padding can also be used as an alternate method. */
}
a img { /* this selector removes the default blue border displayed in some browsers around an image when it is surrounded by a link */
	border: none;
}

/* ~~ Styling for your site's links must remain in this order - including the group of selectors that create the hover effect. ~~ */
a:link {
	color: #42413C;
	text-decoration: underline; /* unless you style your links to look extremely unique, it's best to provide underlines for quick visual identification */
}
a:visited {
	color: #6E6C64;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* this group of selectors will give a keyboard navigator the same hover experience as the person using a mouse. */
	text-decoration: none;
}

/* ~~ This fixed width container surrounds all other divs ~~ */
.container {
	width: 960px;
	background-color: #FFFFFF;
	margin: 0 auto; /* the auto value on the sides, coupled with the width, centers the layout */
}

/* ~~ The header is not given a width. It will extend the full width of your layout. It contains an image placeholder that should be replaced with your own linked logo. ~~ */
.header {
	padding:10px;
	background-color:#666;
	color:white;
	border-bottom:black solid 2px;
}

/* ~~ These are the columns for the layout. ~~ 

1) Padding is only placed on the top and/or bottom of the divs. The elements within these divs have padding on their sides. This saves you from any "box model math". Keep in mind, if you add any side padding or border to the div itself, it will be added to the width you define to create the *total* width. You may also choose to remove the padding on the element in the div and place a second div within it with no width and the padding necessary for your design.

2) No margin has been given to the columns since they are all floated. If you must add margin, avoid placing it on the side you're floating toward (for example: a right margin on a div set to float right). Many times, padding can be used instead. For divs where this rule must be broken, you should add a "display:inline" declaration to the div's rule to tame a bug where some versions of Internet Explorer double the margin.

3) Since classes can be used multiple times in a document (and an element can also have multiple classes applied), the columns have been assigned class names instead of IDs. For example, two sidebar divs could be stacked if necessary. These can very easily be changed to IDs if that's your preference, as long as you'll only be using them once per document.

4) If you prefer your nav on the right instead of the left, simply float these columns the opposite direction (all right instead of all left) and they'll render in reverse order. There's no need to move the divs around in the HTML source.

*/
.sidebar1 {
	float: left;
	width: 50%;
	background-color: #EADCAE;
	padding-bottom: 2px;
}
.content {

	padding: 10px 0;
	width: 100%;
	float: left;
}
.sidebar2 {
	float: left;
	width: 50%;
	background-color: #EADCAE;
	padding: 0px 0;
}



/* ~~ The footer styles ~~ */
.footer {
	text-align: center;
	padding: 5px 0;
	background-color: #666;
	position: relative;/* this gives IE6 hasLayout to properly clear */
	clear: both; /* this clear property forces the .container to understand where the columns end and contain them */
    color: white;
}

/* ~~ Miscellaneous float/clear classes ~~ */
.fltrt {  /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	margin-left: 8px;
}
.fltlft { /* this class can be used to float an element left in your page. The floated element must precede the element it should be next to on the page. */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* this class can be placed on a <br /> or empty div as the final element following the last floated div (within the .container) if the .footer is removed or taken out of the .container */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
-->
</style></head>

<body>

<div class="container">
  <div class="header"><strong><font size="+3">Evaluasi Kompetensi Dasar</font></strong></div>
  <div  class="sidebar1">
  	
    <table style="border:1px solid black;"  width="100%" cellspacing="0">
    	<tr>
        	<th style="border-bottom:2px solid black;" colspan="3"><strong>Kompetensi Dasar (KD):</strong></th>
        </tr>
        <?php foreach($data_kd as $key){
		 ?>
    	<tr>
        	<td valign="top" style="padding-right:5px" align="right" width="40"><?php echo $key['kd_ke'];?></td>
            <td valign="top" style="padding-left:5px"><?php echo $key['nama'];?></td>
        </tr>
        <?php } ?>
    </table>
    
  <!-- end .sidebar1 --></div>
  <div class="sidebar2">
  	<div style="width:100%;border-bottom:2px black solid">
  	  <table style="border:1px black solid">
      	<tr>
        	<td valign="top" width="150" style="text-align: left">Mata Pelajaran</td>
            <td valign="top" width="10" style="text-align: left">:</td>
            <td valign="top" width="305" style="text-align: left"><strong><?php echo $getData['nama_mapel']; ?></strong></td>
        </tr>
        <tr>
        	<td valign="top" width="150" style="text-align: left">Kelas</td>
            <td valign="top" width="10" style="text-align: left">:</td>
            <td valign="top" width="305" style="text-align: left"><?php echo $getData['nama_kelas']; ?></td>
        </tr>
        <tr>
        	<td valign="top" width="150" style="text-align: left">Guru</td>
            <td valign="top" width="10" style="text-align: left">:</td>
            <td valign="top" width="305" style="text-align: left"><?php echo $getData['nama_guru']; ?></td>
        </tr>
        <tr><td valign="top" width="150" style="text-align: left">Nama Ujian</td>
            <td valign="top" width="10" style="text-align: left">:</td>
            <td valign="top" width="305" style="text-align: left"><?php echo $getData['nama_ujian']; ?></td></tr>
      </table>
  	</div>
    <div>
    	<table width="100%" border="1" cellspacing="0">
        	<tr>
            	<td bgcolor="#CCFF00" align="center"><strong>Nilai Tertinggi</strong></td>
              <td bgcolor="#CCFF00" align="center"><strong>Nilai Terendah</strong></td>
              <td bgcolor="#CCFF00" align="center"><strong>Rata-Rata</strong></td>
            </tr>
        	<tr>
            	<td align="center"><font size="+5"><?php echo number_format($stat1->maks, 1); ?></font></td>
                <td align="center"><font size="+5"><?php echo number_format($stat1->minim, 1); ?></font></td>
                <td align="center"><font size="+5"><?php echo number_format($stat1->rata,1); ?></font></td>
            </tr>
        
        	<tr>
            	<td bgcolor="#CCFF00" align="center"><strong>Jumlah Soal</strong></td>
              <td bgcolor="#CCFF00" align="center"><strong>Jumlah Siswa</strong></td>
              <td bgcolor="#CCFF00" align="center"><strong>Ketercapaian</strong></td>
            </tr>
        	<tr>
            	<td align="center"><font size="+5"><?php echo $getData['jumlah_soal']; ?></font></td>
                <td align="center"><font size="+5"><?php echo $stat1->jml_siswa; ?></font></td>
                <td align="center"><font size="+5"><?php echo number_format(($presen*100),0)."%"; ?></font></td>
            </tr>
        </table>
    
    </div> 
  </div>
  <div class="content">
    <h3>Grafik Pencapaian KD</h3>
			<?php
         
        	/*$dataPoints = array(
            array("label"=> "KD1", "y"=> 60.0),
            array("label"=> "KD2", "y"=> 70),
			array("label"=> "KD2", "y"=> 70),
			array("label"=> "KD2", "y"=> 70),
			array("label"=> "KD2", "y"=> 70),
			array("label"=> "KD2", "y"=> 70),
            array("label"=> "KD3", "y"=> 4.6),
            array("label"=> "Magento", "y"=> 2.4),
            array("label"=> "Blogger", "y"=> 1.9),
            array("label"=> "Shopify", "y"=> 1.8),
            array("label"=> "Bitrix", "y"=> 1.5),
            array("label"=> "Squarespace", "y"=> 1.5),
            array("label"=> "PrestaShop", "y"=> 1.3),
            array("label"=> "Wix", "y"=> 0.9),
            array("label"=> "OpenCart", "y"=> 0.8),
			array("label"=> "OpenCart", "y"=> 0.8),
			array("label"=> "OpenCart", "y"=> 0.8)
			
        );*/

        //echo "<pre>";print_r($dataPoints);echo "</pre>";
            
?>

	<script>
        window.onload = function () {
         
        var chart = new CanvasJS.Chart("chartContainer", {
            animationEnabled: true,
            theme: "light1",
            /*title: {
                text: "Grafik Pencapaian Kompetensi"
            },*/
            axisY: {
                suffix: " siswa",
                interval: 5,
                
            },
			 axisX:{
   				labelAngle: 50,
 			},
            data: [{
                type: "column",
                yValueFormatString: "#,##0\"\"",
                indexLabel: "{y}",
                indexLabelPlacement: "inside",
                indexLabelFontColor: "white",
                dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
            }]
        });
        chart.render();
         
        }
        </script>
    
    <div id="chartContainer" style="height: 370px; width: 100%;"></div>
    <script src="<?php echo base_url(); ?>___/js/canvasjs-2.2/canvasjs.min.js"></script>
                                  
    <!-- end .content --></div>
  <div class="footer">
    SMK Taruna Bangsa @ 2018
  <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>
