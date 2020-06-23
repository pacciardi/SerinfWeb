<%

	if enviado="" or enviado=0 then
		men="Por favor completar los campos"
	else
		if enviado=1 then
			men="Mensaje enviado correctamente"
		else
			men="El mensaje no ha sido enviado. <br> Por favor enviarlo a contacto@serinf.com.ar"
		end if
	end if

%>

<!doctype html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Desarrollos web :: Sitios web - Aplicaciones web - Catalogos web :: Luj&aacute;n Buenos Aires 6700</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

		<link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/sticky-footer/">
		
		<link rel="stylesheet" href="../css/estilo.css">
	    <script src="../js/funciones.js"></script>

	</head>
	<body>

		<div id="header" class="header">
		
	</div>
	
    <nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
	  <span class="navbar-brand mb-0 h1">SERINF</span>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item">
	        <a class="nav-link" href="../htm/principal.htm">INICIO </a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="../htm/clientes.htm">CLIENTES</a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="contacto.asp">CONTACTO <span class="sr-only">(current)</span></a>
	      </li>
	    </ul>
	    <span class="navbar-text">
		  Servicios Informaticos
		</span>
	    
	  </div>

	</nav>

	<br>

	<div class="container">
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="principal.htm">Inicio</a></li>
		    <li class="breadcrumb-item active" aria-current="page">Clientes</li>
		  </ol>
		</nav>

		<div class="table-responsive">
			<table>
				<tbody>
				    <tr>
				    	<th scope="row">
							<h2 class="text-center serviciosInf">
								<span class="text-right">
									Hacemos Desarrollos Web
								</span>
							</h2>
						</th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<br>
		
		<div class="container">

			<div id="form">
				<div class="row">
					<div class="col-md-6">
						<div class="panel panel-default">
		  					<div class="panel-body">
								<form action="envia.asp" method="post" name="form1">
									<div class="form-group">
										<h4><%=men%></h4>
										<hr>
									</div>
									<div class="form-group">
										<label>Nombre</label>
										<input type="text" name="txtNom" class="form-control" placeholder="Nombre" required>
									</div>
									<div class="form-group">
										<label>Tel&eacute;fono</label>
										<input type="text" name="txtTel" class="form-control" placeholder="Tel&eacute;fono">
									</div>
									<div class="form-group">
										<label>Mail</label>
										<input type="text" name="txtMail" required class="form-control" placeholder="E-Mail">
									</div>
									<div class="form-group">
										<label>Comentario</label>
										<textarea required name="txtMen" class="form-control" placeholder="Comentario"></textarea>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-primary">
											ENVIAR
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						 
						<address>
						  <abbr title="E-mail"><strong>E-mail:</strong></abbr><br>
						  contacto@serinf.com.ar
						</address>
					</div>
				</div>
			</div>
		</div>
		
	<footer class="footer mt-auto py-3">
		<div class="container">
			<span class="text-muted">www.serinf.com.ar &copy; 2019</span>
		</div>
	</footer>

	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>