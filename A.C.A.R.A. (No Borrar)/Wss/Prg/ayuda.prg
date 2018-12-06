public oAyuda
oAyuda  = _screen.activeform.activecontrol
oform = _screen.activeform

haylib = .t.
ccurclasslib=set("ClassLib")
if len(alltrim(ccurclasslib))=0
	haylib = .f.
endif

set classlib to ayuda

veo_ayuda = .f.

declare vvector(10)

**************************************************************

if upper(oAyuda.name) = upper("nroscod1")

	vtabla       = "NUMERAD"
	vcaption     = "Tabla de Numeradores"
	vcampos      = "DESCRIP,NUMERADOR"
	vcampobuscar = "DESCRIP"
	vcamporeturn = "NUMERADOR"
	VTIPOCAMPOBU = "C"
	vwhere       = ""
	veo_ayuda    = .t.

endif

if upper(oAyuda.name) = upper("text1")

	vtabla       = "CLIENTE"
	vcaption     = "Tabla de Clientes"
	vcampos      = "DESCRIP,TIPOCLI,CODCLI"
	vcampobuscar = "DESCRIP"
	vcamporeturn = "CODCLI"
	VTIPOCAMPOBU = "C"
	vwhere       = ""
	veo_ayuda    = .t.

endif

if upper(oAyuda.name) = upper("cliente")

	vtabla       = "CLIENTE"
	vcaption     = "Tabla de Clientes"
	vcampos      = "DESCRIP,TIPOCLI,CODCLI"
	vcampobuscar = "DESCRIP"
	vcamporeturn = "CODCLI"
	VTIPOCAMPOBU = "C"
	xx = oAyuda.parent.tipocliente1.value
	vwhere       = "TIPOCLI = xx"
	veo_ayuda    = .t.
	vvector(1)   = "Cliente"
	vvector(2)   = "Tipo"
	vvector(3)   = "Código"
endif

if upper(oAyuda.name) = upper("xclipro")

	if oform.vcpn = "C"
		vtabla       = "CLIENTE"
		vcaption     = "Tabla de Clientes"
		vcampos      = "DESCRIP,TIPOCLI,CODCLI"
		vcampobuscar = "DESCRIP"
		vcamporeturn = "CODCLI"
		VTIPOCAMPOBU = "C"
		xx = oAyuda.parent.xtipo.value
		vwhere       = "TIPOCLI = xx"
		veo_ayuda    = .t.
		vvector(1)   = "Cliente"
		vvector(2)   = "Tipo"
		vvector(3)   = "Código"
	endif

	if oform.vcpn = "P"
		vtabla       = "PROVE"
		vcaption     = "Tabla de Proveedores"
		vcampos      = "DESCRIP,CODPROVE"
		vcampobuscar = "DESCRIP"
		vcamporeturn = "CODPROVE"
		VTIPOCAMPOBU = "C"
		vwhere       = ""
		veo_ayuda    = .t.
		vvector(1)   = "Proveedor"
		vvector(2)   = "Código"
	endif

endif

if upper(oAyuda.name) = upper("ctacte_codcli")

	vtabla       = "CLIENTE"
	vcaption     = "Tabla de Clientes"
	vcampos      = "DESCRIP,TIPOCLI,CODCLI,SOCIO_NRO"
	vcampobuscar = "DESCRIP"
	vcamporeturn = "CODCLI"
	VTIPOCAMPOBU = "C"
	xx = oAyuda.parent.xtipo.value
	vwhere       = "TIPOCLI = xx"
	veo_ayuda    = .t.
	vvector(1)   = "Cliente"
	vvector(2)   = "Tipo"
	vvector(3)   = "Código"
	vvector(4)   = "Nro. Socio"

endif

if upper(oAyuda.name) = upper("VCODTRA") .or. upper(oAyuda.name) = upper("CODTRA1")

	vtabla       = "TIPOTRA"
	vcaption     = "Tabla de Transacciones"
	vcampos      = "DESCRIP,CODTRA"
	vcampobuscar = "DESCRIP"
	vcamporeturn = "CODTRA"
	VTIPOCAMPOBU = "C"
	vwhere       = "TIPOTRA = 'S' AND tipoTRA <> 'COB'"
	veo_ayuda    = .t.

endif

if upper(oAyuda.name) = upper("VCODTRACTACTE")
	vtabla       = "KTRANS"
	vcaption     = "Tabla de Transacciones de Cuenta Corriente"
	vcampos      = "DESCRIP as descrip,CODTRA"
	vcampobuscar = "DESCRIP"
	VTIPOCAMPOBU = "C"
	vcamporeturn = "CODTRA"
	vwhere       = ""
	veo_ayuda    = .t.
	vvector(1)   = "Transacción"
	vvector(2)   = "Código"

endif

if upper(oAyuda.name) = upper("VTIPODOCU")
	vtabla       = "DOCUM"
	vcaption     = "Tabla de Tipos de Documentos"
	vcampos      = "DESCRIP,TIPODOCU"
	vcampobuscar = "DESCRIP"
	VTIPOCAMPOBU = "C"
	vcamporeturn = "TIPODOCU"
	vwhere       = ""
	veo_ayuda    = .t.
	vvector(1)   = "Denominación"
	vvector(2)   = "Tipo"

endif

if upper(oAyuda.name) = upper("VPROVINCIA") .or. upper(oAyuda.name) = upper("codprov1")
	vtabla       = "PROV"
	vcaption     = "Tabla de Provincias"
	vcampos      = "PROVINCIA,CODPROV"
	vcampobuscar = "PROVINCIA"
	VTIPOCAMPOBU = "C"
	vcamporeturn = "CODPROV"
	vwhere       = ""
	veo_ayuda    = .t.
	vvector(1)   = "Denominación"
	vvector(2)   = "Código"

endif

if upper(oAyuda.name) = upper("VCODIVA") .or. upper(oAyuda.name) = upper("IVAENTE1") .or. ;
   upper(oAyuda.name) = upper("CODIVA1")
	vtabla       = "IVA"
	vcaption     = "Tabla de I.V.A."
	vcampos      = "DESCRIP,CODIVA"
	vcampobuscar = "DESCRIP"
	VTIPOCAMPOBU = "C"
	vcamporeturn = "CODIVA"
	vwhere       = ""
	veo_ayuda    = .t.
	vvector(1)   = "Denominación"
	vvector(2)   = "Código"

endif

if upper(oAyuda.name) = upper("VCODENTE")
	vtabla       = "ENTES"
	vcaption     = "Tabla de Entes"
	vcampos      = "NOMENTE,CODENTE"
	vcampobuscar = "NOMENTE"
	vcamporeturn = "CODENTE"
	VTIPOCAMPOBU = "C"
	vwhere       = ""
	veo_ayuda    = .t.

endif

if upper(oAyuda.name) = upper("VCODBCO") .or. upper(oAyuda.name) = upper("BANCO")

	vtabla       = "BANCOS"
	vcaption     = "Tabla de Bancos"
	vcampos      = "DESCRIP,CODBCO"
	vcampobuscar = "DESCRIP"
	vcamporeturn = "CODBCO"
	VTIPOCAMPOBU = "C"
	vwhere       = ""
	veo_ayuda    = .t.

endif

if upper(oAyuda.name) = upper("XTIPO") .or. upper(oAyuda.name) = upper("xTIPOCLI")
	vtabla       = "TCLIENTE"
	vcaption     = "Tabla de Tipos de Clientes"
	vcampos      = "DESCRIP,TIPCLI"
	vcampobuscar = "DESCRIP"
	vcamporeturn = "TIPCLI"
	VTIPOCAMPOBU = "C"
	vwhere       = ""
	veo_ayuda    = .t.

endif

if upper(oAyuda.name) = upper("VCODVTA")
	vtabla       = "KCAMCOND"
	vcaption     = "Tabla de Condiciones de Venta"
	vcampos      = "DESCRIP,CODVTA"
	vcampobuscar = "DESCRIP"
	VTIPOCAMPOBU = "C"
	vcamporeturn = "CODVTA"
	vwhere       = ""
	veo_ayuda    = .t.

endif

if upper(oAyuda.name) = upper("VCODVAL")
	vtabla       = "KTRAVAL"
	vcaption     = "Tabla de Valores"
	vcampos      = "DESCRIP,CODVAL"
	vcampobuscar = "DESCRIP"
	VTIPOCAMPOBU = "C"
	vcamporeturn = "CODVAL"
	vwhere       = ""
	veo_ayuda    = .t.

endif

if upper(oAyuda.name) = upper("VCODPROD")
	vtabla       = "KPRODVAL"
	vcaption     = "Tabla de Productos"
	vcampos      = "DESCRIP,CODPROD"
	vcampobuscar = "DESCRIP"
	VTIPOCAMPOBU = "C"
	vcamporeturn = "CODPROD"
	vwhere       = ""
	veo_ayuda    = .t.

endif

if upper(oAyuda.name) = upper("CODPROD")
	vtabla       = "PROD"
	vcaption     = "Tabla de Productos"
	vcampos      = "DESCRIP,CODPROD"
	vcampobuscar = "DESCRIP"
	VTIPOCAMPOBU = "C"
	vcamporeturn = "CODPROD"
	vwhere       = ""
	veo_ayuda    = .t.

endif

***************************************************************


if veo_ayuda

	public _valor

	_valor = oAyuda.value

    RELEASE WINDOW HLP11
	frmmyform = createobject("hlp",vtabla,vcaption,vcampos,vcampobuscar,vcamporeturn,vwhere,VTIPOCAMPOBU,@vvector)

	frmmyform.show

	oAyuda.value = _valor
	oAyuda.setfocus()

	release frmmyform


endif


if haylib
	set classlib to &ccurclasslib
endif


release _valor,oAyuda

on key label F1 do ayuda

return
