# Tareas

Completar los archivos del módulo haciendo uso de for_each

Crear tres archivos txt y guardarlos en la carpeta resources del repositorio live.

# LLamada al módulo usando git

source = "git::https://git-codecommit.eu-west-1.amazonaws.com/v1/repos/<nombre-del-repo>//s3?ref=master"



file_list = {
    "file01.txt" = {
        source  = "resources/file01.txt"
        key    = "/datos/file01.txt" 
    },
    "file02.txt" = {
        source  = "resources/file02.txt"
        key    = "/datos/file02.txt" 
    },
    "file03.txt" = {
        source  = "resources/file03.txt"
        key    = "/datos/file03.txt" 
    }
}