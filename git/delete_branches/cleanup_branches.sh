#!/bin/bash

# Check if a filename argument was provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Read the filename containing branch names
filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' does not exist."
  exit 1
fi

# Iterate through each branch name in the file and delete it
while IFS= read -r branch_name; do
  # Trim leading/trailing whitespace
  branch_name=$(echo "$branch_name" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')

  if [ -n "$branch_name" ]; then
    # Delete the branch
    git branch -d "$branch_name"
    if [ $? -eq 0 ]; then
      echo "Deleted branch '$branch_name'"
    else
      echo "Error deleting branch '$branch_name'"
    fi
  fi
done < "$filename"

echo "Branch cleanup completed."
