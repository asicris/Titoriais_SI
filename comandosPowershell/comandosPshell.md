# Comandos de Ficheiros

Algúns dos comandos empregados para ficheiros e directorios tamén serven para tratar con enlaces simbólicos, claves de rexistro, certificados, variables, etc. A todos estes recursos PowerShell chámalles **ítems**, e aos manexadores que tratan cada tipo de recurso, chámalles **provedores**(providers)

## Moverse pola estrutura de directorios  
Para moverse polos directorios empregamos 4 **cmdlets**.
```console
Get-Location [-PSDrive <DISPOSITIVO>] [-StackName <NOME_PILA>]
```
Indica a nosa localización na estrutura de directorios actual. É similar a `pwd`
Para saber a nosa localización poñemos soamente:

`Get-Location`

Se por exemplo, estamos navegando noutro sitio, por exemplo, o rexistro, e queremos ver a nosa posición en C poríamos:

`Get-Location -PsDrive C`

```console
Set-Location [-Path <RUTA>] [-StackName <NOME_PILA>]
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

```console
Push-Location [-Path <RUTA>] [-StackName <NOME_PILA>]
```

```console
Pop-Location [-StackName <NOME_PILA>]
```

## Exercicios
1. Sitúate no directorio do usuario que estás a utilizar.
1. Comproba que estás situado nese directorio.
1. Accede ao rexistro á carpeta Software\Microsoft.
1. Fai unha listaxe desa carpeta do rexistro
1. Volta á unidade C:\
