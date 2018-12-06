FUNCTION run
PARAMETERS doscmd
DECLARE INTEGER WinExec IN win32api AS run STRING command, INTEGER param
cmdstart = sys(2003) + "\FOXRUN.PIF /C"
fullcmd = cmdstart + doscmd
retval = run(fullcmd,0)
return retval



procedure salida
vrespuesta=messagebox(" Cierra Sistema ?",68, "Confirme...")
if vrespuesta = 7
	return
endif
clear events
close all databases
quit
return

function micerrar(vbase)
*CLOSE &VBASE
select (vbase)
unlock
return.t.

procedure errhand
parameter merror, mess, mess1, mprog, mlineno
do form msgerror with merror, mess, mess1, mprog, mlineno
return

*****
* Proceso
*
* Muestra el archivo indice y el porcentaje indexado
*
*****
procedure proceso
parameters nom_indice
cant_proce = cant_proce+1
a=round(cant_proce/cant_indic*100,0)
@11,46 clear to 11,66
@11,48 say nom_indice
@13,24 say replicate("±",int(a/10*3))
return

function valcuit(var)
if empty(var)
	=messagebox("C.U.I.T. Inválido.",64, "Error...")
	return .f.
else
*
* Calculo
*
	if substr(var,01,1) <> "2" .and. substr(var,01,1) <> "3"
		=messagebox("C.U.I.T. Inválido.",64, "Error...")
		return .f.
	endif

	dig_01 = val(substr(var,01,1)) * 5
	dig_02 = val(substr(var,02,1)) * 4
	dig_03 = val(substr(var,03,1)) * 3
	dig_04 = val(substr(var,04,1)) * 2
	dig_05 = val(substr(var,05,1)) * 7
	dig_06 = val(substr(var,06,1)) * 6
	dig_07 = val(substr(var,07,1)) * 5
	dig_08 = val(substr(var,08,1)) * 4
	dig_09 = val(substr(var,09,1)) * 3
	dig_10 = val(substr(var,10,1)) * 2
	dig_ve = val(substr(var,11,1))

	if !(dig_01 = 0 .and. dig_02 = 0 .and. dig_03 = 0 .and. dig_04 = 0 .and. ;
			dig_05 = 0 .and. dig_06 = 0 .and. dig_07 = 0 .and. dig_08 = 0 .and. ;
			dig_09 = 0 .and. dig_10 = 0 .and. dig_ve = 0)
*
		calc1 = (dig_01 + dig_02 + dig_03 + dig_04 + dig_05 + ;
			dig_06 + dig_07 + dig_08 + dig_09 + dig_10)
		calc2 = calc1 / 11
		calc3 = calc1 - (int(calc2) * 11)
		if calc3  = 0
			digito = 0
		else
			digito = 11 - calc3
		endif
		if digito = dig_ve
			return .t.
		else
			=messagebox("C.U.I.T. Inválido.",64, "Error...")
			return .f.
		endif
	else
		=messagebox("C.U.I.T. Inválido.",64, "Error...")
		return .f.
	endif
endif




***
*
*   StrZero( <nNumber>, <nLength>, <nDecimals> ) -. cNumber
*
*
function strzero( n, nlength, ndecimals )

local cnumber

if pcount() = 3
	cnumber = str( n, nlength, ndecimals )

else
	if pcount() = 2
		cnumber = str( n, nlength )
	else
		cnumber = str( n )
	endif
endif

if "-" $ cnumber

*** Negative number, move the minus sign in front of zeros
	return ( "-" + replicate( "0", len( cnumber ) -    ;
		len( ltrim( cnumber ))) +                 ;
		substr( cnumber, at( "-", cnumber ) + 1 ) )

endif

*** Positive number

return ( replicate( "0", len( cnumber ) - len( ltrim( cnumber ))) + ;
	ltrim( cnumber ) )


FUNCTION OK_TEMP()
IF !DIRECTORY(DIRTEMPORAL)
   =MESSAGEBOX(" Falta Directorio: " + DIRtemporal + chr(13) + chr(13) + ;
                 "Proceso Cancelado...", 16, "Error")
   return .F.             	
ENDIF	
RETURN .T.
