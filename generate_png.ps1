$jar = Join-Path $PSScriptRoot 'plantuml.jar'
Get-ChildItem -Filter *.puml | ForEach-Object {
    java -jar $jar -tpng $_.FullName
}
