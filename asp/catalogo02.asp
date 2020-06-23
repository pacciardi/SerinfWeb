<%

	enviado=request.querystring("enviado")

	if enviado="" or enviado=0 then
		men="Por favor complet&aacute; los campos"
	end if

	if enviado=1 then
		response.write("<script>location.href='#formPago';</script>")
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
	
    <nav id="menu" class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
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
		    <li class="breadcrumb-item"><a href="../htm/principal.htm">Inicio</a></li>
		    <li class="breadcrumb-item"><a href="../htm/catalogo.htm">Catalogo Web</a></li>
		    <li class="breadcrumb-item"><a href="../htm/catalogo.htm">Adquirir</a></li>
		    <li class="breadcrumb-item active" aria-current="page"><strong>Comprar</strong></li>
		  </ol>
		</nav>

		<br>

		<% if enviado=0 then%>

			<div class="row" id="formDatosPersonales">
				<div class="col-md-7">
					<div class="panel panel-default">
	  					<div class="panel-body">
							<form action="enviaDatosPersonales.asp?cual=catalogo" method="post" name="form1" onsubmit="return validar();">
								<div class="form-group">
									<h4><%=men%></h4>
									<hr>
								</div>
								<div class="form-group">
									<label>Nombre completo</label>
									<input type="text" name="txtNom" class="form-control" placeholder="Nombre" required>
								</div>
								<div class="form-group">
									<label>E-Mail</label>
									<input type="text" name="txtMail" required class="form-control" placeholder="E-Mail">
								</div>
								<div class="form-group">
									<label>Nombre de la web (www.suweb.com)</label>
									<input type="text" name="txtWeb" required class="form-control" placeholder="Nombre de la WEB">
								</div>
								<div class="form-group">
									<button type="submit" class="btn btn-success ancho">
										ENVIAR
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<img src="../img/miniweb02.jpg" class="img-responsive imgProductos opciones">
				</div>
			</div>
		<%end if%>
		
		<% if enviado=1 then%>
			<div class="row" id="formPago">
				<div class="col-md-6">
					<h3>Solo resta realizar el pago.&nbsp;<img src="../img/ok_.png" alt=""></h3>
					<p>Podes hacerlo mediante Mercado Pago, el medio m&aacute;s seguro.</p>

					<a mp-mode="dftl" href="https://www.mercadopago.com.ar/checkout/v1/redirect?preference-id=7178665-170b4b79-a2b6-4699-9c08-c2badf95c26d" name="MP-payButton" class='green-ar-l-sq-arall'>Pagar $7000</a>
					<script type="text/javascript">
					(function(){function $MPC_load(){window.$MPC_loaded !== true && (function(){var s = document.createElement("script");s.type = "text/javascript";s.async = true;s.src = document.location.protocol+"//secure.mlstatic.com/mptools/render.js";var x = document.getElementsByTagName('script')[0];x.parentNode.insertBefore(s, x);window.$MPC_loaded = true;})();}window.$MPC_loaded !== true ? (window.attachEvent ?window.attachEvent('onload', $MPC_load) : window.addEventListener('load', $MPC_load, false)) : null;
						document.getElementById("menu").className="oculto";
					})();

					</script>

					<br><br>
					Luego de generar el pago, nos comunicaremos para iniciar el desarrollo.
				</div>
				<div class="col-md-6 text-center">
					<img src="../img/medios.png" alt="">
				</div>
			</div>
		<%end if%>

		<br>

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