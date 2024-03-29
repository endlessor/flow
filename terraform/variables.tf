variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-west-2"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "elastic_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "470247399311.dkr.ecr.us-east-2.amazonaws.com/elastic:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8000
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

# variable "ecs_autoscale_role" {
#   description = "Role arn for the ecsAutocaleRole"
#   default     = "YOUR_ECS_AUTOSCALE_ROLE_ARN"
# }

# variable "ecs_task_execution_role" {
#   description = "Role arn for the ecsTaskExecutionRole"
#   default     = "YOUR_ECS_TASK_EXECUTION_ROLE_ARN"
# }

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}