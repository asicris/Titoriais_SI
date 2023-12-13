## Exercicios de comandos CMD simples

Baseándose nos comandos simples de cmd.

* [Comandos de Windows - Páxina de Microsoft](https://learn.microsoft.com/es-es/windows-server/administration/windows-commands/windows-commands)
* [Lista de comandos básicos - Genbeta](https://www.genbeta.com/a-fondo/35-comandos-imprescindibles-cmd-windows)

____

1) Crea a seguinte estrutura de datos

```console
c:\comandos>tree
Listado de rutas de carpetas
El número de serie del volumen es 0C4E-5810
C:.
├───scripts
└───tiempo
```
###### SOLUCIÓN:
```console
mkdir c:\comandos
mkdir c:\comandos\scripts
mkdir c:\comandos\tiempo
```

2) Mostra a hora na liña de comandos, sen pedir unha nova.
###### SOLUCIÓN:
```console
time /T
```

3) Mostrar a data na liña de comandos, sen pedir unha nova.

###### SOLUCIÓN:
```console
date /T
```

4) Empregando copy con, crear un ficheiro que se chame tiempovigo.txt dentro de "c:\tiempo"

###### SOLUCIÓN:
```console
copy con c:\comandos\tiempo\tiempovigo.txt
Ctrl^z
```

5) Facendo uso do comando "echo" imprimir por pantalla: `Fecha actual 13-12-2023`
###### SOLUCIÓN:
```console
echo Fecha actual %DATE%
```
6) Facendo uso da redirección > ou >> engade ao ficheiro *tiempovigo.txt* a frase 
![Fecha actual](images/fecha.png)
###### SOLUCIÓN:
```console
echo Fecha actual %DATE% > c:\comandos\tiempo\tiempovigo.txt
```
7) Amosa o contido do ficheiro *tiempovigo.txt*
###### SOLUCIÓN:
```console
type c:\comandos\tiempo\tiempovigo.txt
```
8) Engade ao ficheiro anterior, facendo uso de "echo" a frase "Hoxe chove"
###### SOLUCIÓN:
```console
echo Hoxe chove >> c:\comandos\tiempo\tiempovigo.txt
```
9) Crear un directorio chamado "log" dentro de c:\comandos
###### SOLUCIÓN:
```console
md c:\comandos\log
```
10) Facer un ping a www.google.es 4 veces soamente 
###### SOLUCIÓN:
```console
ping -n 4  www.google.es
```

11) Facer un ping a www.google.es 4 veces soamente e volcar o resultado a un  c:\comandos\log\logping.txt
###### SOLUCIÓN:
```console
ping -n 4  www.google.es > c:\comandos\log\logping.txt
```

12) Mostrar o contido do ficheiro pinggoogle.txt
###### SOLUCIÓN:
```console
type c:\comandos\log\logping.txt
```
13) Mostrar solamente as líneas de logping.txt que conteñan a palabra **"perdidos"** facendo uso das tuberías **|** e do comando **find** ou soamente do comando **find**

###### SOLUCIÓN:
```console
type c:\comandos\log\logping.txt | find "perdidos"
```
outra posible

```console
find "perdidos" c:\comandos\log\logping.txt
```

14) Facer un ping a **edu.xunta.es** 2 veces soamente e ENGADIR o resultado ao ficheiro  c:\comandos\log\logping.txt
###### SOLUCIÓN:
```console
ping -n 2  www.elpais.es >> c:\comandos\log\logping.txt
```

15) Mostrar o contido do ficheiro pinggoogle.txt
###### SOLUCIÓN:
```console
cd c:\comandos\log\

c:\comandos\log>type logping.txt

```
16) Mostrar solamente as líneas de logping.txt que conteñan a frase **"Haciendo ping"** e indica que non teña en conta as maiúsculas e minúsculas ao buscar.

###### SOLUCIÓN:
```console
type c:\comandos\log\logping.txt | find /I "haciendo ping"
```
outra posible

```console
ffind /I "haciendo ping" c:\comandos\log\logping.txt
```
17) Sabes agora cales son as IPs de Google e edu.xunta.es?
###### SOLUCIÓN:
```console
Haciendo ping a www.google.es [142.250.201.67] con 32 bytes de datos:
Haciendo ping a edu.xunta.es [85.91.64.65] con 32 bytes de datos:
```

-----
Outros comandos:

18) Empregando un comando facer que se apague o ordenador.
###### SOLUCIÓN:
```console
shutdown /s
```
19) Empregando un comando facer que se REINICIE o ordenador.
###### SOLUCIÓN:
```console
shutdown /r
```
20) Amosa a árbore de directorios de c:\comandos
###### SOLUCIÓN:
```console
tree c:\comandos

Listado de rutas de carpetas para el volumen WINDOWS
El número de serie del volumen es 0000008D 07F8:9FE6
C:\COMANDOS
├───log
├───scripts
└───tiempo
```

21) Amosa a árbore de directorios de c:\comandos onde se amosen os directorios e os arquivos que hai neles.
###### SOLUCIÓN:
```console
tree c:\comandos /F

Listado de rutas de carpetas para el volumen WINDOWS
El número de serie del volumen es 000000F0 07F8:9FE6
C:\COMANDOS
├───log
│       logping.txt
│
├───scripts
└───tiempo
        tiempovigo.txt


```
#### Rutas relativas e copias
22) Sitúate no directorio log.
###### SOLUCIÓN:
```console
cd c:\comandos\log

c:\comandos\log>

```

23) Copiar desde o directorio onde estás, o ficheiro "tiempovigo.txt" co nome "tiempo.txt"
###### SOLUCIÓN:
```console
c:\comandos\log>copy ..\tiempo\tiempovigo.txt ..\tiempo\tiempo.txt
        1 archivo(s) copiado(s).


```
24) Listar o contido do directorio "tiempo" desde onde estás, con ruta relativa.
###### SOLUCIÓN:
```console
 c:\comandos\log>dir ..\tiempo

 El volumen de la unidad C es WINDOWS
 El número de serie del volumen es: 07F8-9FE6

 Directorio de c:\comandos\tiempo

14/12/2023  00:26    <DIR>          .
14/12/2023  00:26    <DIR>          ..
13/12/2023  23:53                54 tiempo.txt
13/12/2023  23:53                54 tiempovigo.txt
               2 archivos            108 bytes
               2 dirs  20.123.131.904 bytes libres

```
25) Renomear o ficheiro "logping.txt" desde onde estás ao nome "logrede.txt"

###### SOLUCIÓN:
```console
 rename logping.txt logrede.txt

```
26) Listar agora o contido do directorio "log"
###### SOLUCIÓN:
```console
c:\comandos\log>dir
 El volumen de la unidad C es WINDOWS
 El número de serie del volumen es: 07F8-9FE6

 Directorio de c:\comandos\log

14/12/2023  00:33    <DIR>          .
14/12/2023  00:33    <DIR>          ..
14/12/2023  00:18               829 logrede.txt
               1 archivos            829 bytes
               2 dirs  20.122.578.944 bytes libres
```
27) Copia o directorio c:\comandos e todo o seu contido, incluso directorios baleiros a c:\copia-seg-comandos, e que non pregunte nada, por defecto todo SI.
###### SOLUCIÓN:
```console
>xcopy /E /Y c:\comandos c:\copia-seg-coman
dos
¿C:\copia-seg-comandos especifica un archivo
o un directorio como destino
(F = archivo, D = directorio)? D
```
28) Revisa a árbore do c:\copia-seg-coman

###### SOLUCIÓN:
```console
tree c:\copia-seg-coman /F
```

29) Borra todo o directorio **c:\copia-seg-coman** e o directorio **c:\comandos** empregando **rmdir** e de forma silenciosa, sen que pida ningunha confirmación.
###### SOLUCIÓN:
```console
rmdir /S /Q c:\copia-seg-comandos 
rmdir /S /Q c:\comandos 
```
