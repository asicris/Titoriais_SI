@echo off


set nomeusuario=%1

echo INICIANDO PROGRAMA

REM Comprobando se eres administrador, redirecciona saída a nul 2

net session >nul 2>&1
if %errorLevel% ==0 (
	REM Se non hai erros
	echo Eres administrador, puedes crear usuarios
	GOTO:crearusuarios
) else (
	echo Tes que executar o script con permisos de administrador
)

:crearusuarios
	if "%1"=="" (
		echo DEBES INTRODUCIR O NOME DUN USUARIO
	) else (
		echo Creando usuario %nomeusuario%
		net user %nomeusuario% abc123. /add /LOGONPASSWORDCHG:YES
	)


echo Fin
