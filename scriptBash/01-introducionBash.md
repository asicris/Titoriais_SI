## Que é Bash?
Bash é un intérprete de comandos que se emprega nos sistemas operativos GNU/Linux para a programación de scripts.É dicir, empregamos bash, para a execución de varias ordes de forma **automática** do intérprete de comandos.
No mundo dos sistemas automátizanse procesos por varios motivos:
+ Para que se executen de forma desatencida
+ Para reducir o número de erros, xa que algo que se repite cómpre automatizado xa que ten menos probabilidade de fallo.

#### Crear script : #!/bin/bash
Para crear un script de bash, no inicio do script ponse `#!/bin/bash` no inicio do script, para que identifique que a linguaxe na que estamos a escribir é **bash**:

```bash
#!/bin/bash
echo Ola Mundo!!!
```
Este script amosaría por pantalla a frase "Ola Mundo!!!":
```bash
~/scripts$ bash olamundo 
Ola Mundo!!!
~/scripts$ 
```

Para crear o script podemos empregar calquera editor de texto, eu recomendo empregar **nano**, máis sinxelo, ou **vim**.
`nano olamundo.sh`

#### Darlle permisos de execución 
Unha vez que creamos un script, hai que comprobar os permisos que ten. E se non ten permiso de execución, dámosllo con:

`chmod +x nomescript.sh` para darlle permiso de **execución.**

Así que faríamos o seguinte na consola:
```bash
chmod +x olamundo.sh
./olamundo.sh
```
Para executar poñemos diante do nome do script **./** `./nome-script`

### Exemplo de script de bash que inicia unha páxina Web

Por exemplo, imos facer un script que inicie por defecto a páxina Web do www.iesteis.es.

Para elo empregamos o comando **xdg-open** que se encarga de abrir un arquivo na aplicación marcada por defecto no sistema.

```bash
#!/bin/bash
# iniciarwebteis.bat
# Script que inicia a páxina do IES de Teis no navegador por defecto
xdg-open http://www.iesteis.es
```
Emprégase o caracter **#** para poñer comentarios.
