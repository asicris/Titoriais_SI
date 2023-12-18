## Copias de seguridade con Xcopy
1) Busca no cmd a axuda relacionada con xcopy
##### Solución
```
help xcopy

xcopy /?
```

2) Descarga o seguinte ficheiro exerci [Exercicios-msdos.zip](./Exercicios-msdos.zip) e descomprímeo (co modo gráfico) dentro do equipo con Windows. Unha vez descomprimido fai unha copia, con todos os directorios e subdirectorios, e arquivos en **c:\copiamsdos** empregando o comando **xcopy**

3) Explica, paso por paso do comando e as opcións, que fai o seguinte comando.

```
xcopy c:\users\administrador\Documents c:\Backup\Administrador\Documents /m /e /y
```
##### Solución
```
Cando creas e executas un arquivo batch que contén a liña representada na parte superior, o que estás a facer é usar o comando “XCOPY” para copiar o contido do “cartafol de saída” ao “cartafol de copia de seguridade”; naturalmente debes adaptar correspondientemente os directorios nos que se atopan os dous cartafoles. Neste proceso, os tres parámetros teñen a seguinte función:


    /m: garantiza que solo se copien archivos actualizados para que los archivos que ya se han guardado en copias de seguridad anteriores no se vuelvan a copiar.
    /e: indica que para la copia de seguridad también se tienen en cuenta todos los subdirectorios incluidos en el directorio indicado.
    /y: suprime la demanda de confirmación para sobrescribir un archivo de destino existente (en el que se han realizado cambios desde la última copia de seguridad).
```
## Iniciar programas start
1) Busca no cmd a axuda relacionada con start

2) Escribe un comando que inicie firefox coa páxina do IES de Teis. Non o peches.
##### Solución
```
start msedge www.iesteis.es
```


## Listado de tarefas: tasklist, taskkill
1) Lista as tarefas que se están executando con **tasklist**
##### Solución
```
tasklist
```

2) Empregando unha tubería con **| find "cadea"**, lista todas as tarefas que se estean executando de **msedge** ou do navegador co que iniciaras a páxina de Ies de Teis.
##### Solución
```
tasklist | find "msedge"
```

3) Pecha a tarefa que executa o navegador coa páxina do IES de Teis. Busca o seu PID e péchao con **taskkill* usando o **pid**

** No meu caso o PID é 2264.

##### Solución
```
taskkill /fi "pid eq 2264"
```




