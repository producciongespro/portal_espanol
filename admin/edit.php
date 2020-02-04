<?php
include("conexion.php");
?>
<!DOCTYPE html>
<html lang="es">
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Edición de artículos</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="css/bootstrap-datepicker.css" rel="stylesheet">
	<link href="../css/style_nav.css" rel="stylesheet">
	<style>
		.content {
			margin-top: 80px;
		}
	</style>
	
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<?php include("nav.php");?>
	</nav>
	<div class="container">
		<div class="content">
			<h2>Artículos &raquo; Editar artículo</h2>
			<hr />
			
			<?php
			// escaping, additionally removing everything that could be (html/javascript-) code
			$id = mysqli_real_escape_string($con,(strip_tags($_GET["id"],ENT_QUOTES)));
			$sql = mysqli_query($con, "SELECT * FROM articulos WHERE id='$id'");
			if(mysqli_num_rows($sql) == 0){
				header("Location: index.php");
			}else{
				$row = mysqli_fetch_assoc($sql);
				$imagenSeleccionada= $row ['url_img'];
			}
			if(isset($_POST['save'])){
				$url_img=$imagenSeleccionada;
				$seccion		     = mysqli_real_escape_string($con,(strip_tags($_POST["seccion"],ENT_QUOTES))); 
				$url_ref	 = mysqli_real_escape_string($con,(strip_tags($_POST["url_ref"],ENT_QUOTES))); 
				// $url_img = mysqli_real_escape_string($con,(strip_tags($_POST["url_img"],ENT_QUOTES)));
				$texto	     = mysqli_real_escape_string($con,(strip_tags(utf8_decode($_POST["texto"]),ENT_QUOTES))); 	
				$update = mysqli_query($con, "UPDATE articulos SET texto='$texto', url_ref='$url_ref', url_img='$url_img', seccion='$seccion' WHERE id='$id'") or die(mysqli_error());
				if($update){
					header("Location: edit.php?id=".$id."&pesan=sukses");
				}else{
					echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
				}
			}
			
			if(isset($_GET['pesan']) == 'sukses'){
				echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Los datos han sido guardados con éxito.</div>';
			}
			?>
			<form class="form-horizontal" action="" method="post">
				<div class="form-group">
					<label class="col-sm-3 control-label">Id</label>
					<div class="col-sm-2">
						<input type="text" name="id" value="<?php echo $row ['id']; ?>" class="form-control" placeholder="Id" disabled>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">Sección</label>
					<div class="col-sm-4">
						<select name="seccion" name="seccion" id="seccion">
							<option value="<?php echo $row ['seccion']; ?>"  selected><?php echo ucwords($row ['seccion']); ?> </option>
							<option value="programas">Programas</option>
							<option value="sitios">Sitios</option>
							<option value="antologias">Antologías</option>
							<option value="cuentos">Cuentos</option>
							<option value="videoconferencias">Videoconferencias</option>
							<option value="videos">Videos</option>
							<option value="documentos">Documentos</option>
							<option value="textos">Textos</option>
							<option value="otros">Otros</option>
						</select>
	
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">URL referencia</label>
					<div class="col-sm-4">
						<input type="text" name="url_ref" value="<?php echo $row ['url_ref']; ?>" class="form-control" placeholder="URL referencia" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">URL Imagen</label>
					<div class="col-sm-4">
						<input type="text" name="url_img" value="<?php echo $row ['url_img']; ?>" class="form-control" placeholder="URL imagen" disabled>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">Descripción</label>
					<div class="col-sm-3">
						<textarea name="texto" class="form-control" placeholder="Descripción"><?php echo utf8_encode($row ['texto']); ?></textarea>
					</div>
				</div>	
				<div class="form-group">
					<label class="col-sm-3 control-label">&nbsp;</label>
					<div class="col-sm-6">
						<input type="submit" name="save" class="btn btn-sm btn-primary" value="Guardar datos">
						<a href="index2.php" class="btn btn-sm btn-danger">Cancelar</a>
					</div>
				</div>
			</form>
		</div>
	</div>
 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

</body>
</html>