#!/bin/bash

# Check if a filename argument was provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Read the branch name from the file
filename=$1
branch_name=$(cat "$filename")

# Check if the branch name is empty
if [ -z "$branch_name" ]; then
  echo "Error: Branch name is empty in the file '$filename'."
  exit 1
fi

# Prefix the branch name with "dev_"
new_branch_name="dev_$branch_name"

# Check if the current branch is "development"
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [ "$current_branch" != "development" ]; then
  echo "Error: You must be on the 'development' branch to create a new branch based off it."
  exit 1
fi

# Create the new branch based on "development"
git checkout -b "$new_branch_name" development

echo "Created and switched to branch '$new_branch_name' based on 'development'."
