# Module - ACR Attach
[![COE](https://img.shields.io/badge/Created%20By-CCoE-blue)]()
[![HCL](https://img.shields.io/badge/language-HCL-blueviolet)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/provider-Azure-blue)](https://registry.terraform.io/providers/hashicorp/azurerm/latest)

Module used to perform the ACR attach to an AKS cluster. The following permission is granted to the kubelet managed identity:

- AcrPull

## Compatibility Matrix

| Module Version | Terraform Version | AzureRM Version |
|----------------|-------------------| --------------- |
| v1.0.0       | v1.3.6 | 3.37.0         |

## Specifying a version

To avoid that your code get updates automatically, is mandatory to set the version using the `source` option. 
By defining the `?ref=***` in the the URL, you can define the version of the module.

Note: The `?ref=***` refers a tag on the git module repo.

## Use case
```hcl
module "<acr name>" {
  source = "git::https://github.com/danilomnds/terraform-azurerm-acr-attach?ref=v1.0.0"
  aks_name = <aks cluster name>
  aks_rg = <aks resource group>
  scope = <container registry id>  
}
```

## Input variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | A unique UUID/GUID for this role assignment - one will be generated if not specified | `string` | n/a | No |
| aks_name | aks cluster name | `string` | n/a | `Yes` |
| aks_rg | AKS resource group | `string` | n/a | `Yes` |
| scope | ACR id | `string` | n/a | `Yes` |
| condition | The condition that limits the resources that the role can be assigned to | `string` | n/a | No |
| condition_version | The version of the condition. Possible values are 1.0 or 2.0 | `string` | n/a | No |
| delegated_managed_identity_resource_id | The delegated Azure Resource Id which contains a Managed Identity | `string` | n/a | No |
| description | The description for this role assignment | `string` | n/a | No |
| skip_service_principal_aad_check | skip the Azure AD account verification | `bool` | `false` | No |

## Documentation
Terraform Role Assignment: <br>
[https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment)<br>

How to attach an ACR to an AKS: <br>
[https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry)