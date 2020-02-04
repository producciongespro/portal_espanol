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
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Agregar artículo</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- Bootstrap -->
	
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
			<h2>Artículos &raquo; Agregar artículo</h2>
			<hr />
 
			<?php
			if(isset($_POST['add'])){
				
				$seccion	 = mysqli_real_escape_string($con,(strip_tags($_POST["seccion"],ENT_QUOTES))); 
				switch ($seccion) {
					case 'programas':
						$url_img	 = mysqli_real_escape_string($con,"img/iconos/program_gen.png");
					break;
					case 'sitios':
						$url_img	 = mysqli_real_escape_string($con,"img/iconos/sitio_gen.png");
					break;
					case 'antologias':
						$url_img	 = mysqli_real_escape_string($con,"img/iconos/ant_gen.png");
					break;
					case 'cuentos':
						$url_img	 = mysqli_real_escape_string($con,"img/iconos/cuento_gen.png");
					break;
					case 'videoconferencias':
						$url_img	 = mysqli_real_escape_string($con,"img/iconos/videoc_gen.png");
					break;
					case 'videos':
						$url_img	 = mysqli_real_escape_string($con,"img/iconos/video_gen.png");
					break;
					case 'documentos':
						$url_img	 = mysqli_real_escape_string($con,"img/iconos/document_gen.png");
					break;
					case 'textos':
						$url_img	 = mysqli_real_escape_string($con,"img/iconos/text_gen.png");
					break;
					case 'otros':
						$url_img	 = mysqli_real_escape_string($con,"img/iconos/otros_gen.png");
					break;
					default:
						# code...
						break;
				}
				$url_ref	 = mysqli_real_escape_string($con,(strip_tags($_POST["url_ref"],ENT_QUOTES))); 
				 
				$texto	     = mysqli_real_escape_string($con,(strip_tags(utf8_decode($_POST["texto"]),ENT_QUOTES))); 
				
			
 
				$cek = mysqli_query($con, "SELECT * FROM articulos WHERE texto='$texto'");
				if(mysqli_num_rows($cek) == 0){
						$insert = mysqli_query($con, "INSERT INTO articulos(seccion, url_ref, url_img, texto)
															VALUES('$seccion', '$url_ref', '$url_img', '$texto')") or die(mysqli_error());
						if($insert){
							echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>¡Bien hecho! El artículo ha sido guardado con éxito.</div>';
						}else{
							echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error. ¡No se pudo guardar el artículo!</div>';
						}
					 
				}else{
					echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error. ¡Ya existe un artículo con la misma descripción!</div>';
				}
			}
			?>
			<form class="form-horizontal" action="" method="post">
				<div class="form-group">
					<label class="col-sm-3 control-label">Sección</label>
					<div class="col-sm-4">
					<select name="seccion" name="seccion" id="seccion" required>
							<option value="" selected disabled>Seleccione una sección</option>
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
						<input type="text" name="url_ref" class="form-control" placeholder="URL Referencia" required>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label">Descripción</label>
					<div class="col-sm-3">
						<textarea name="texto" class="form-control" placeholder="Descripción"></textarea>
					</div>
				</div>


				
				<div class="form-group">
					<label class="col-sm-3 control-label">&nbsp;</label>
					<div class="col-sm-6">
						<input type="submit" name="add" class="btn btn-sm btn-primary" value="Guardar datos">
						<a href="index2.php" class="btn btn-sm btn-danger">Cancelar</a>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>