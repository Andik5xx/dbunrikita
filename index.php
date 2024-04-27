<?php

include "connect.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Tugas 8</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="bootstrap.min.css" rel="stylesheet">
  <script src="bootstrap.bundle.min.js"></script>
 
</head>
<body>
<div class="p-5 bg-primary text-white text-center">
  <h1>Data Prodi</h1>
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="index.php">Data Prodi</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="konsentrasi.php">Data Konsentrasi</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="semester.php">Data Semester</a>
      </li>
      
    </ul>
  </div>
</nav>
<div class="container mt-5">
  <div class="row">
   
    <div class="col-12">
    	<div class="table-responsive">
    <table class="table table-bordered table-hover table-striped">
      <thead class="table-dark">
        <tr>
          <th class="text-center">No</th>
          <th class="text-center">Program Studi</th>
          <th class="text-center">Visi</th>
          
        </tr>
      </thead>
      <tbody>
      	<?php

      	$sql = "SELECT * from prodi";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
		  // output data of each row
			$no=1;
		  while($row = $result->fetch_assoc()) {

		    ?>
		    <tr>
          <td class="text-center"><?= $no; ?></td>
          <td class="text-justify"><?= $row['nama_prodi'] ?></td>
          <td class=""><?= $row['visi'] ?></td>
          
        </tr>

		    <?php
		    $no++;
		  }
		} else {
		  echo "0 results";
		}
		$conn->close();



      	 ?>
        
      </tbody>
    </table>
  </div>
</div>

    </div>
    
  </div>
</div>

<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>ANDIKA</p>
</div>

</body>
</html>
