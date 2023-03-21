resource "aws_codecommit_repository" "niraj" {
    repository_name = var.repo_name
    description = "test repo"

    lifecycle {
      ignore_changes = [
        repository_name
      ]
    }
  
}

output "terraform_repo_id" {
    value = aws_codecommit_repository.niraj.repository_name
  
}

variable "repo_name" {
    type = string
    default = "heyrepmynewreopo123"
    description = "changing the repo name"
  
}