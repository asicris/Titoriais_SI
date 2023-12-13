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


2) Mostra a hora na liña de comandos, sen pedir unha nova.

3) Mostrar a data na liña de comandos, sen pedir unha nova.


4) Empregando copy con, crear un ficheiro que se chame tiempovigo.txt dentro de "c:\tiempo"
5) Facendo uso do comando "echo" imprimir por pantalla: `Fecha actual 13-12-2023`
6) Facendo uso da redirección > ou >> engade ao ficheiro *tiempovigo.txt* a frase 
![Fecha actual](images/fecha.png)
7) Amosa o contido do ficheiro *tiempovigo.txt*
8) Engade ao ficheiro anterior, facendo uso de "echo" a frase "Hoxe chove"
9) Crear un directorio chamado "log" dentro de c:\comandos
10) Facer un ping a www.google.es 4 veces soamente 
11) Facer un ping a www.google.es 4 veces soamente e volcar o resultado a un  c:\comandos\log\logping.txt
12) Mostrar o contido do ficheiro pinggoogle.txt
13) Mostrar solamente as líneas de logping.txt que conteñan a palabra **"perdidos"** facendo uso das tuberías **|** e do comando **find** ou soamente do comando **find**
14) Facer un ping a **edu.xunta.es** 2 veces soamente e ENGADIR o resultado ao ficheiro  c:\comandos\log\logping.txt
15) Mostrar o contido do ficheiro pinggoogle.txt

16) Mostrar solamente as líneas de logping.txt que conteñan a frase **"Haciendo ping"** e indica que non teña en conta as maiúsculas e minúsculas ao buscar.
17) Sabes agora cales son as IPs de Google e edu.xunta.es?

-----
Outros comandos:

18) Empregando un comando facer que se apague o ordenador.
19) Empregando un comando facer que se REINICIE o ordenador.
20) Amosa a árbore de directorios de c:\comandos
21) Amosa a árbore de directorios de c:\comandos onde se amosen os directorios e os arquivos que hai neles.

#### Rutas relativas e copias

22) Sitúate no directorio log.


23) Copiar desde o directorio onde estás, o ficheiro "tiempovigo.txt" co nome "tiempo.txt"

24) Listar o contido do directorio "tiempo" desde onde estás, con ruta relativa.

25) Renomear o ficheiro "logping.txt" desde onde estás ao nome "logrede.txt"

26) Listar agora o contido do directorio "log"

27) Copia o directorio c:\comandos e todo o seu contido, incluso directorios baleiros a c:\copia-seg-comandos, e que non pregunte nada, por defecto todo SI.

28) Revisa a árbore do c:\copia-seg-coman


29) Borra todo o directorio **c:\copia-seg-coman** e o directorio **c:\comandos** empregando **rmdir** e de forma silenciosa, sen que pida ningunha confirmación.
