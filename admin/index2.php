<?php
include "config.php";

// Check user login or not
if(!isset($_SESSION['uname'])){
    header('Location: index.php');
}

// logout
if(isset($_POST['but_logout'])){
    session_destroy();
    header('Location: index.php');
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
 
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Artículos publicados</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="../css/style_nav.css" rel="stylesheet">
 
	<style>
		.content {
			margin-top: 80px;
		}
		body{
			width: 90%;
		}
	</style>
 
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<?php include('nav.php');?>
    </nav>

	<div class="container">
    <!-- <form method='post' action="">
            <input type="submit" value="Logout" name="but_logout">
        </form> -->
		<div class="content">
			<h2>Artículos publicados</h2>
			<hr />
 
			<?php
			if(isset($_GET['aksi']) == 'delete'){
				// escaping, additionally removing everything that could be (html/javascript-) code
				$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
				$cek = mysqli_query($con, "SELECT * FROM articulos WHERE id='$nik'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
				}else{
					$delete = mysqli_query($con, "DELETE FROM articulos WHERE id='$nik'");
					if($delete){
						echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Artículo eliminado correctamente.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar el artículo.</div>';
					}
				}
			}
			?>
 
			<br />
			<div class="">
			<table class="table table-responsive table-striped">
			<thead>
				<tr>
                    <th>Id</th>
					<th>Descripción</th>
					<th>Imagen</th>
                    <th>Enlace</th>
                    <th>Sección</th>
                    <th>Editar</th>
                    <th>Eliminar</th>
				</tr>
			</thead>
			<tbody>
				<?php
                $sql = mysqli_query($con, "SELECT * FROM articulos ORDER BY id ASC");
                $numero_filas = mysqli_num_rows($sql);
			    if($numero_filas == 0){
					echo '<tr><td colspan="8">No hay datos.</td></tr>';
				}else{
					$no = 1;
					while($row = mysqli_fetch_assoc($sql)){
						echo '
						<tr>
							<td>'.$row['id'].'</td>
							<td>'.utf8_encode($row['texto']).'</td>
                            <td>'.$row['url_img'].'</td>
							<td>'.$row['url_ref'].'</td>
                            <td>'.ucwords($row['seccion']).'</td>';
							
						echo '<td><a href="edit.php?id='.$row['id'].'" title="Editar datos" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
							</td>
							<td>
								<a href="index.php?aksi=delete&nik='.$row['id'].'" title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos '.$row['texto'].'?\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
							</td>
						</tr>
						';
						$no++;
					}
				}
				?>
				 </tbody>
			</table>
			</div>
		</div>
	</div><center>
	<p>&copy; GESPRO <?php echo date("Y");?></p
		</center>

</body>
</html>