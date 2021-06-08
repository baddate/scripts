#!/bin/bash
echo -e "\033[0;32mPulling updates to Local...\033[0m"

is_update=`git pull`
echo "git pull: $is_update"
no_update="Already up to date."

# if [ "$is_update" == "$no_update" ]
#   then
#     echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

#     git add .

#     Commit changes.
#     msg="backing up my notes `date +"%Y-%m-%d %T"`"
#     if [ $# -eq 1 ]
#       then msg="$1"
#     fi
#     git commit -m "$msg"

#     # Push source and build repos.
#     git push origin master
# fi

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

git add .

# Commit changes.
msg="backing up my notes `date +"%Y-%m-%d %T %Z"`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
