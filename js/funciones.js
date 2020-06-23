function contenido(cual){

	var sitios=document.getElementById("sitios");
	var catalogos=document.getElementById("catalogos");
	var sistemas=document.getElementById("sistemas");

	switch (cual) {
		case "sitios":
			if (sitios.className=="oculto col-xs-12") {
				sitios.className="visible col-xs-12";
				catalogos.className="oculto col-xs-12";
				sistemas.className="oculto col-xs-12";
			}else{
				sitios.className="oculto col-xs-12"
			}
			//location.href="#sitios";
			break;
		case "catalogos":
			if (catalogos.className=="oculto col-xs-12") {
				catalogos.className="visible col-xs-12";
				sitios.className="oculto col-xs-12";
				sistemas.className="oculto col-xs-12";
			}else{
				catalogos.className="oculto col-xs-12"
			}
			
			//location.href="#catalogos";
			break;
		default:
			if (sistemas.className=="oculto col-xs-12") {
				sistemas.className="visible col-xs-12";
				sitios.className="oculto col-xs-12";
				catalogos.className="oculto col-xs-12";
			}else{
				sistemas.className="oculto col-xs-12"
			}
			
			//location.href="#sistemas";
			break;
	}
	

}

function validar(){

	ruta=document.form1;
	
	if (ruta.txtNom.value==""){
		alert("COMPLETAR NOMBRE");
		ruta.txtNom.focus();
		return false;
	}
	
	if (ruta.txtMail.value==""){
		alert("COMPLETAR E-MAIL");
		ruta.txtMail.focus();
		return false;
	}else {
		var b=/^[^@\s]+@[^@\.\s]+(\.[^@\.\s]+)+$/
		if(!b.test(ruta.txtMail.value)){
			alert("DIRECCION DE E-MAIL INVALIDA.");
			ruta.txtMail.focus();
			return false;
	    }
	}	
	
	if (ruta.txtWeb.value==""){
		alert("COMPLETAR NOPMBRE DE LA WEB");
		ruta.txtWeb.focus();
		return false;
	}

}