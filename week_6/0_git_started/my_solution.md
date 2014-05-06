## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
<!-- Your definition here -->
 
Git add will "add" a file to the "staging area" which basically means it will be included
in the next commit.  Multiple files can be included in an add statement, or they can be added one at a time. 


#### branch
<!-- Your definition here -->
 
Git branch shows what branches you currently have in a repository.  By default, git creates a "master" branch when you initialize git in a new repository.  You can use the branch command to create and delete branches, in case you want to check back on a previous version of something (new branches are created as of the last commit).  Git branch -v shows when each branch in a repository was modified. 


#### checkout
<!-- Your definition here -->
 
Git checkout is how you switch between branches after they have been committed.  git checkout (branchname) will make (branchname) the active branch.  


#### clone
<!-- Your definition here -->
 
Git clone does exactly what I would think it does, it creates a version of a project by "cloning" or duplicating it.  git clone <url> is the syntax, and it will make a clone of the repository or project at <url>.


#### commit
<!-- Your definition here -->
 
Git commit actually commits, or submits the changes, in your staging area to the repository.  It automatically records your email address so you know who the commit was made by, and you can add certain options to the command.  For example, git commit -m (some message) will record that message along with the commit if you want more detail.  git commit -a will automatically add EVERY file that has been modified since the last commit to the staging area, and then commit it.  This is useful if you know you want to commit every file you've modified, but I think it could be dangerous and could lead to overwriting something accidentally.  I'm sure there are additional options as well.


#### fetch
<!-- Your definition here -->
 
Git fetch is how you update your remote version of a repository when the original repository has changed.  The user supplies a URL for the upstream repository, then git will record whatever has changed relative to the local copy.  This looks to be how I would update my DBC prep repos.  The merge command will "merge" these changes that have been fetched onto your copy of the repository.  


#### log
<!-- Your definition here -->
 
Git log uses options and keywords to search through the different commits by user, topic, date, etc. This is convenient when working on a project with multiple people.  So, for example, if I want to see only commits made by myself on a group project, I can run git log --author="Amol Borcar"


#### merge
<!-- Your definition here -->
 
See git fetch, the merge command will sync the fetched changes from a remote repository with your copy of a repository.


#### pull
<!-- Your definition here -->
 
Git pull combines fetch and merge into one step and merges the fetched changes onto whatever branch you're currently working on (master by default).


#### push
<!-- Your definition here -->
 
Git push will submit your branch to the remote repository and make it the default branch that people can fetch or pull or clone.  However, the branch you are pushing must be an updated version of the most current version of the branch.  Meaning that if, in between your cloning the upstream branch and trying to push your changes, the upstream branch has been modified, your changes will not be pushed; rather your branch will exist as another version that can be merged later. 


#### reset
<!-- Your definition here -->
 
git reset is apparently very confusing, based on Internet research.  One use is to un-stage files prior to a commit, to avoid committing conflicting versions of the same file or to commit different versions to different branches.  This is accomplished by git reset HEAD <filename>.  git reset HEAD doesn't physically remove the file from the staging area, rather it changes the "status" of the file to what it had before being added to the staging area, effectively destaging it.  Similarly, git reset --soft <filename> will uncommit a file after it has been committed and move it back to the staging area.  git reset --hard <filename> will undo all changes and completely reset the staging area.  I can't imagine when I would use this except in a testing/learning environment, it seems way too dangerous.


#### rm
<!-- Your definition here -->
 
git rm removes a file from the staging area.  This means that the file will not be included in the next commit. 


#### status
<!-- Your definition here -->
 
The git status command gives a current view of the "staging area" as it stands.  This is good for looking at what potentially will be committed or pushed.  It also shows what other files are in the working directory that either have or haven't been changed since the last commit.  




## Release 4: Git Workflow

- Push files to a remote repository
- Fetch changes
- Commit locally

## Release 5: Reflection