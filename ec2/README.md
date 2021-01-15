# Kong module

This module will create a single node Kong instance with an embedded PostgreSQL database.

## Inputs

| Name                    | Description                                               | Type   | Default               |
|-------------------------|-----------------------------------------------------------|--------|-----------------------|
| environment             | Tag identifying the environment                           | string | -                     |
| project                 | Tag identifying the project                               | string | -                     |
| resource_prefix         | Prefix for Resources                                      | string | -                     |
| vpc_id                  | The id of the specific VPC in which to deploy the Kong    | string | -                     |
| subnet_id               | The id of the specific subnet in which to deploy the Kong | string | -                     |
| ami_id                  | The id of the AMI                                         | string | ami-020a619f733091289 |
| instance_type           | The type of the instance                                  | string | t2.medium             |
| key_name                | The SSH public key name                                   | string | kong.pub              |
| allowed_security_groups | Allowed AWS Security Group map                            | map    | -                     |
| route53_zone_name       | Route53 zone name for DNS resolution                      | string | -                     |
| route53_zone_id         | Route53 zone ID for DNS resolution                        | string | -                     |