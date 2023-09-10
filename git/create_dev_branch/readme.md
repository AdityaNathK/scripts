# Branch Prefix

A Bash script that reads a branch name from a text file, creates a new branch
with the "dev_" prefix, and ensures that the new branch is based off the
"development" branch.

## Making it executable

Save this script to a file, for example, create_dev_branch.sh, and make it executable by running:

```bash

chmod +x ./create_dev_branch.sh  
# or chmod u+x create_dev_branch.sh on Mac OS X

```

## Creating a text file to add branch names

Create a text file `branch_name.txt` and add branch name to it.

for example :
branch name is `KA-01_add_branch_name_here`. Add it to the file `branch_name.txt`
we must ensure there are no spaces in branch name

## Usage

You can then use it by providing a text file containing the desired branch name as an argument, like this:

```bash
# will create feature/my-new-feature from master
./create_dev_branch.sh branch_name.txt  

```
