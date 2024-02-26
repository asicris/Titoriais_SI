
### Exercicio 1

Facer un script que defina as variables:
+ nome: que conteña o teu nome completo 
+ apelidos: que conteña os teus apelidos 

Debe amosar por pantalla o valor das variables, é dicir o teu nome e apelidos, xunto coa data nunha frase como a que se amosa no exemplo de saída:

EXEMPLO DE SAÍDA:
```
C:\Users\Administrador\scripts>exercicio1.bat
Benvida á clase de hoxe 22/02/2024 : Cristina Puga Barreiros
```
---
SOLUCIÓN

```
@echo off
chcp 65001 > nul
set nome=Cristina
set apelidos=Puga Barreiros

echo Benvida á clase de hoxe %date% : %nome% %apelidos%

```
### Exercicio 2

Fai un script que cree unha carpeta que se chama BACKUPAPUNTES. Debe de comprobar, se xa existe, debe amosar unha mensaxe que poña que "O directorio BACKUPAPUNTES XA EXISTE" e senón existe debe creala e indicar por pantalla "Creado o directorio BACKUPAPUNTES"

---
SOLUCIÓN:
```bat
@echo off
chcp 65001>nul

set directorio=BACKUPAPUNTES


REM Verifica se existe o directorio se non existe créao senón amosa un aviso.
if exist %directorio% (
    echo O directorio %directorio% XA existe.
) else ( 
    mkdir %directorio%
    echo Creado o directorio %directorio%.
)
echo FIN DA EXECUCIÓN DO PROGRAMA
``` 
### Exercicio 3

1) Descarga do libro documentación esta páxina en formato PDF e gárdaa en DIURNO/COMPARTIDO-VIRTUAL/Apuntes.
2) Comparte esta carpeta coa máquina virtual de Windows que estás a emprega, e que se monte co nome apuntes.

Crea un script que faga unha copia de todo o contido da carpeta compartida coa máquina á carpeta c:\users\<nomedoteusuario>\BACKUPAPUNTES.

Para facelo debes de definir as variables orixen e destino.

+ Debes comprobar se existe o **destino**, se non existe debes crealo.
+ Debes comprobar se existe o **orixen**, se non existe debes de sacar unha mensaxe que diga: *" NON EXISTE O ORIXEN NON SE PODE COPIAR."* Debe de solicitar premer nun botón e saír do programa con (exit).

Captura á saída da execución do comando. Se da erro, debe crear un ficheiro log, chamado **"backupapuntes.log"**.

---
SOLUCIÓN:

```bat
@echo off
chcp 65001>nul

set orixen=z:\Apuntes
set destino=BACKUPAPUNTES


REM Verifica se existe o directorio se non existe créao senón amosa un aviso.
if not exist %destino% (
    mkdir %directorio%
    echo Creado o directorio %directorio%.
) 

if not exist %orixen% (
  	echo NON EXISTE O ORIXEN NON SE PODE COPIAR.
	pause
	exit
)

xcopy /E %orixen% %destino% 2>backupapuntes.log
echo FIN DA EXECUCIÓN DO PROGRAMA
```


### Solución exercicio 4
Fai un script que se chame instalacionchoco.

Debe de instalar con Chocolatey o FIREFOX. 
Se a instalación remata de forma exitosa, debe amosar o aviso "INSTALOUSE CORRECTAMENTE FIREFOX".
No caso de que se produza un erro, debe de aparecer soamente por pantalla " A INSTALACIÓN NON SE PUIDO REALIZAR".

Se se produxo un erro, debe de reflexalo no ficheiro **chocoerror.log**.

Ao finalizar o programa debe amosar "FIN DA EXECUCIÓN DO PROGRAMA".

A saída por pantalla debe recoñecer os caracteres do español.
---
SOLUCIÓN:

```bat
@echo off

REM chcp permite poner la codificación de idioma para que coja bien los caracteres especiales.
chcp 65001 > nul

REM DEFINIMOS VARIABLES
set LOGFILE=instalacion.log
set ERRORFILE=chocoerror.log

echo Instalando Firefox...
REM 2> indica que envía la salida de error a &1, que indica que es al mismo sitio que la salida estándar
choco install firefox -y > %LOGFILE% 2>%ERRORFILE%
if %ERRORLEVEL% neq 0 (
   echo Error: Falló la instalación de firefox
) else (
   echo INSTALACIÓN CORRECTA firefox. >> %LOGFILE% 
   echo INSTALOUSE CORRECTAMENTE FIREFOX
)

echo FIN DA EXECUCIÓN DO PROGRAMA
```