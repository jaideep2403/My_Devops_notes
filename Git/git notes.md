to create a git repo to normal delete the .git file

## store in remote repo
- collaboration
- backup purpose
- create in aws codecommit , azure repos, Github

## GIT
- git add - to staging area -- track the changes
- git checkout or git switch -- to change to new branch
- git branch -d name     -- delete empty branch
- git branch -D bame     -- delete branch
- git status
- git log
- git merge
- git remote add origin remote_url
- git push -u origin master
- fast forward merge - when 1 commit in master merged from other branch having more commits
- non fast-forward merge - master having commits more than 1 after creating more branch
- squash merge - combo of all commits
- git rebase - make project history linear
- git revert - reverese a commit easily, creates a new commit of the reversed changes.
  
- git reset - removes the commit history
- git reset --hard <commit_id> - delete from both commit and file after commit_id
- git reset --soft <commit_id> - removes commit ids , but preserves changes in the file made by deleted commits -- file is in staging area.
- git reset <commit_id> - if nothing used, by default hybrid , hard reset -- file comes in un-stage area , do git restore filename (hard reset)
- git reset <commit_id> - removes commits, preserves in file -- do git add file1 -- file in staging area (soft reset).
- git tag v1 <commit_id> - assignes tag to commit ids can be seen on local repo , but no tags visible on remote repo after pushed.
- git push origin master --tags -- pushes changes with tags in remote repo.
