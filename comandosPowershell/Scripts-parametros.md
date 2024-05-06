# PowerShell: Scripts con parámetros de entrada

## Parámetros opcionais

```powershell
param (
    [String]$departamento,
    [String]$login
)
``` 

Cando se chame ao script, pode pasárselle rutaCarpeta e usuario, no caso de que non se lle pase, tomará o valor **null** ou **cadena vacía**.

## Parámetros Obligatorios

```powershell
param([Parameter(Mandatory)]$departamento, `
    [Parameter(Mandatory)]$login, `
    [Parameter(Mandatory)]$contrasinal, `
    [Parameter(Mandatory)]$apelidos, `
    [Parameter(Mandatory)]$nome)
``` 

**`[Parameter(Mandatory)]`** fai que o parámetro sexa **obligatorio**.

## Definir variables

Para definir unha variable emprégase  **`$nomevble = valor`**. Por exemplo:

`$ruta = Get-Location`

Se quero chamar a unha función dentro dun comando, podo empregar **`$( comando )`**

Por exemplo:
 ` Write-Host Estamos na ruta actual $(Get-Location)`