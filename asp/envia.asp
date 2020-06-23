<%
Dim ap,nom,mail,men,a,enviado

nom=Trim(CStr(Request.Form("txtNom")))
tel=Trim(CStr(Request.Form("txtTel")))
mail=Trim(CStr(Request.Form("txtMail")))
men=Trim(CStr(Request.Form("txtMen")))

if mail="" or nom="" then
	response.Redirect("contacto.asp?enviado=0")
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
		ObjSendMail.Subject="Consulta desde WEB"
		ObjSendMail.From=mail
		ObjSendMail.To="contacto@serinf.com.ar"
		ObjSendMail.TextBody="Nombre: " & nom & vbCrLf & "Mail: " & mail & vbCrLf & "Men: " & men 
		ObjSendMail.Send
		set ObjSendMail=nothing

response.Redirect("contacto.asp?enviado=1")
%>
