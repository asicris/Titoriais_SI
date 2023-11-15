@echo off
REM Declaramos unha variable nomeusuario
set nomeusuario=%1

echo INICIANDO CREACIÓN Usuario
echo CREANDO USUARIO %nomeusuario%
REM créase o usuario
net user %nomeusuario% abc123. /add /LOGONPASSWORDCHG:Y
