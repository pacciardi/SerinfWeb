<%
Dim nom,mail,enviado,cual,strTit,txtWeb

nom=Trim(CStr(Request.Form("txtNom")))
mail=Trim(CStr(Request.Form("txtMail")))
txtWeb=Trim(CStr(Request.Form("txtWeb")))

cual=request.querystring("cual")

if cual="mini" then
	strTit="compra MiniWeb"
elseif cual="full" then
	strTit="compra FullWeb"
else
	strTit="compra Catalogo"
end if

if mail="" or nom="" then
	if cual="mini" then
		response.Redirect("mini02.asp?enviado=0")
	elseif cual="full" then
		response.Redirect("full02.asp?enviado=0")
	else
		response.Redirect("catalogo02.asp?enviado=0")
	end if
end if

					
	Set ObjSendMail=Server.CreateObject("CDO.Message")
	ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
	ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "mail.serinf.com.ar"
	ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
	ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = false
	ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 30
	ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
	ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "contacto@serinf.com.ar"
	ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "@Pablo1982"
	ObjSendMail.Configuration.Fields.Update
	ObjSendMail.Subject=strTit
	ObjSendMail.From=mail
	ObjSendMail.To="contacto@serinf.com.ar"
	ObjSendMail.TextBody="Nombre: " & nom & vbCrLf & "Mail: " & mail & vbCrLf & "Dominio: " & txtWeb
	ObjSendMail.Send
	set ObjSendMail=nothing

	if cual="mini" then
		response.Redirect("mini02.asp?enviado=1")
	elseif cual="full" then
		response.Redirect("full02.asp?enviado=1")
	else
		response.Redirect("catalogo02.asp?enviado=1")
	end if
%>
