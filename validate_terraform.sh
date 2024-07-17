#!/bin/bash

# Function to recursively list all subdirectories excluding .terraform directories
list_subdirectories() {
  local dir="$1"
  # local subdirs=$(find "$dir" -type d -not -path "*/.terraform*")
  local subdirs=$(find "$dir" -type d \( -name ".terraform" -prune \) -o \( -name ".git" -prune \) -o \( -type f -name "*.tf" -exec dirname {} \; \) | sort -u)

  for subdir in $subdirs; do
    echo "$subdir"
  done
}

# Function to perform actions (ls -la, terraform init, terraform validate)
perform_actions() {
  local dir="$1"

  echo "Entering directory: $dir"
  cd "$dir" || return 1  # Change directory or exit if failed

  # List contents
  echo "Listing contents of $dir:"
  ls -la

  # Initialize Terraform
  echo "Initializing Terraform in $dir:"
  terraform init -input=false -backend=false

  # Validate Terraform configuration
  echo "Validating Terraform configuration in $dir:"
  terraform validate

  echo "Actions completed in $dir"
  echo "------------------------------------"

  # Change back to start directory
  cd "$OLDPWD" || return 1
}

# Specify the starting directory (replace with your directory path)
start_dir="."

# Main script logic
subdirs=$(list_subdirectories "$start_dir")

for dir in $subdirs; do
  perform_actions "$dir"
done
