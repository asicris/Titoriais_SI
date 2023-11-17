# Comandos de Ficheiros

Algúns dos comandos empregados para ficheiros e directorios tamén serven para tratar con enlaces simbólicos, claves de rexistro, certificados, variables, etc. A todos estes recursos PowerShell chámalles **ítems**, e aos manexadores que tratan cada tipo de recurso, chámalles **provedores**(providers)

## Moverse pola estrutura de directorios - Localización
Para moverse polos directorios empregamos 4 **cmdlets**.
```PowerShell
Get-Location [-PSDrive <DISPOSITIVO>] 
```
Indica a nosa localización na estrutura de directorios actual. É similar a `pwd`
Para saber a nosa localización poñemos soamente:

`Get-Location`

Se por exemplo, estamos navegando noutro sitio, por exemplo, o rexistro, e queremos ver a nosa posición en C poríamos:

`Get-Location -PsDrive C`

```PowerShell
Set-Location [-Path <RUTA>] 
```
Accede a unha ruta que lle indiquemos no parámetro `-Path <ruta>`, é similar a `cd`.

- Ollo!!: para navegar a unha letra de unidade hai que incluír o `\`. Por exemplo, para acceder á unidade C, poríamos:""

`Set-Location -Path "C:\"`

Ainda que tamén funciona se non poñemos o parámetro **-Path**:

`Set-Location "C:\"`

E isto situaríanos tamén en C.
!["Imaxe Set-Location c:\"](images\setlocation.png)

Poderíamos movernos ao **rexistro** tamén, por exemplo:

`Set-Location HKLM:\Software\Microsoft`

```PowerShell
Push-Location [-Path <RUTA>] 
```
Engade unha localización á pila de localizacións.
```PowerShell
Pop-Location 
```
Volta a localización anterior, saca a última localización da pila.


[1] Administrar a ubicación actual por Microsoft (https://learn.microsoft.com/es-es/powershell/scripting/samples/managing-current-location?view=powershell-7.3)

## Exercicios
1. Sitúate no directorio do usuario que estás a utilizar.
1. Comproba que estás situado nese directorio.
1. Accede ao rexistro á carpeta Software.
1. Fai unha listaxe desa carpeta do rexistro
1. Volta á unidade C:
1. Amosa a localización actual e logo a localización anterior. Onde estaba cando chegou a esta carpeta.

