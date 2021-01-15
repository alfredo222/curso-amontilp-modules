## Crear usuarios con Terraform (for_each)(LAB2)

Crear un script de Terraform que cree una lista de usuarios (usar for_each), los agregue a un grupo y asigne una lista de roles al grupo. Tiene que haber tres variables de entrada:

```bash

users_list  = ["amontilp01","amontilp02","amontilp03"] 
group_name = "amontilp-developers"
policies_list = ["AWSCodeCommitPowerUser","CloudWatchReadOnlyAccess"]

mi_mapa = {
    identificador = "value"
    identificador02 = "value02"
}


```

# Tareas

- Copiar este código al repo modules
- Crear la llamada al módulo en el repo live usando el bucket creado ayer para guardar el tfstate

```terraform
module "users" {
    source = "git::https://git-codecommit.eu-west-1.amazonaws.com/v1/repos/<nombre-del-repo>//users?ref=master"
    users_list = []
}


```

- Ejecutar el terraform con estos datos:

```terraform

users_list  = ["user01","user02","user03"] 
group_name = "developers"
policies_list = ["AWSCodeCommitPowerUser","CloudWatchReadOnlyAccess"]

```

- Ejecutar un terraform destroy