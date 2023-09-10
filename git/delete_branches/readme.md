# Delete Branches

A Bash script that takes a file containing a list of branch names and iterates
through the branches, deleting them one by one.

## Making it executable

Save this script to a file, for example, cleanup_branches.sh, and make it executable by running:

```bash

chmod +x cleanup_branches.sh
# or chmod u+x cleanup_branches.sh on Mac OS X

```

## Creating a text file to add branch names

Create a text file `branch_list.txt` and add branch name to it.

for example :
branch names that are marked for cleanup are

```bash
KA-01_delete_branch_name_1
KA-02_delete_branch_name_2
KA-03_delete_branch_name_3
```

Add it to the file `branch_list.txt`
we must ensure there are no spaces in branch name

## Usage

You can then use it by providing a text file containing the desired branch name as an argument, like this:

```bash
# will create feature/my-new-feature from master
./cleanup_branches.sh branch_list.txt  

```
