data "archive_file" "file" {
  type        = "zip"
  output_path = "./${var.file_name}"
  source_dir  = "./scripts"
  excludes    = ["./scripts/**/__pycache__"]
}

resource "aws_lambda_function" "lambda_function" {
  function_name = var.function_name
  filename      = "./${var.file_name}"

  handler = var.handler
  runtime = var.runtime

  memory_size  = var.memory_size
  package_type = "Zip"

  reserved_concurrent_executions = var.reserved_concurrent_executions # "-1"
  timeout                        = var.timeout

  source_code_hash = data.archive_file.file.output_base64sha256



  layers = var.apply_layers ? var.layers_list : []

  role = aws_iam_role.iam_for_lambda.arn
  tags = var.default_tags

  tracing_config {
    mode = var.tracing_config_mode # "PassThrough"
  }

  environment {
    variables = var.environment_variables
  }
}

resource "aws_iam_role" "iam_for_lambda" {
  name                = var.lambda_role
  assume_role_policy  = file(var.assume_role_policy)
  managed_policy_arns = [aws_iam_policy.policy.arn]
}

resource "aws_iam_policy" "policy" {
  name = var.policy_name

  policy = file(var.policy_file)
}

resource "aws_cloudwatch_log_group" "log_group" {
  name = "/aws/lambda/${aws_lambda_function.lambda_function.function_name}"
  depends_on = [
    aws_lambda_function.lambda_function
  ]
  retention_in_days = 14
}