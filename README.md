## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.iam_for_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_lambda_function.lambda_function](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policy"></a> [assume\_role\_policy](#input\_assume\_role\_policy) | Path to the file containing the IAM policy that grants an entity permission to assume the Lambda execution role | `string` | `null` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | Tags to be used with all the resources provisioned with this script | `map(string)` | `null` | no |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | Map of environment variables to set for the Lambda function | `map(string)` | `null` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | The name of the Lambda function | `string` | `null` | no |
| <a name="input_handler"></a> [handler](#input\_handler) | The entrypoint of the Lambda function | `string` | `null` | no |
| <a name="input_lamda_role"></a> [lamda\_role](#input\_lamda\_role) | The name of the IAM role for the Lambda function | `string` | `null` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The runtime environment for the Lambda function | `string` | `null` | no |
| <a name="input_s3_bucket"></a> [s3\_bucket](#input\_s3\_bucket) | The S3 bucket from which the Lambda code is fetched | `string` | `null` | no |
| <a name="input_s3_key"></a> [s3\_key](#input\_s3\_key) | The S3 key of the Lambda code object | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_function_name"></a> [function\_name](#output\_function\_name) | n/a |
