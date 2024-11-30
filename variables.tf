variable "file_name" {
  description = "The name of code file"
  type        = string
  default     = null
}

variable "function_name" {
  description = "The name of the Lambda function"
  type        = string
  default     = null
}

variable "handler" {
  description = "The entrypoint of the Lambda function"
  type        = string
  default     = null
}

variable "runtime" {
  description = "The runtime environment for the Lambda function"
  type        = string
  default     = null
}

variable "environment_variables" {
  description = "Map of environment variables to set for the Lambda function"
  type        = map(string)
  default     = null
}

variable "assume_role_policy" {
  description = "Path to the file containing the IAM policy that grants an entity permission to assume the Lambda execution role"
  type        = string
  default     = null
}

variable "lambda_role" {
  description = "The name of the IAM role for the Lambda function"
  type        = string
  default     = null
}

variable "policy_name" {
  description = "The name of the policy_name for the Lambda function"
  type        = string
  default     = null
}

variable "policy_file" {
  description = "The name of the policy_file for the Lambda function"
  type        = string
  default     = null
}

variable "default_tags" {
  description = "Tags to be used with all the resources provisioned with this script"
  type        = map(string)
  default     = null
}

variable "tracing_config_mode" {
  description = "tracing_config_mode"
  type        = string
  default     = null
}

variable "memory_size" {
  description = "memory_size"
  type        = string
  default     = null
}

variable "layers_list" {
  description = "layers_list"
  type        = list(string)
  default     = null
}

variable "timeout" {
  description = "timeout"
  type        = string
  default     = null
}

variable "reserved_concurrent_executions" {
  description = "reserved_concurrent_executions"
  type        = string
  default     = null
}
variable "apply_layers" {
  description = "Apply layers to this Lambda function"
  type        = bool
  default     = false
}
# variable "apply_vpc" {
#   description = "Apply VPC configuration to this Lambda function"
#   type        = bool
#   default     = true
# }

# variable "vpc_subnet_ids" {
#   description = "List of VPC subnet IDs for Lambda"
#   type        = list(string)
#   default     = []
# }

# variable "vpc_security_group_ids" {
#   description = "List of VPC security group IDs for Lambda"
#   type        = list(string)
#   default     = []
# }
