# Day 3

## Info - Version Control Overview
<pre>
- helps us track all the source code changes we do
- broadly two types of Version Control tools are there
  1. Centralized
     - examples
       - CVS, Microsoft Visual Source Safe, etc.,
  2. Distributed Version Control System (DVCS)
     - Perforce
     - IBM ClearCase
     - Git
     - GitHub
</pre>

## Info - Git Version Control
<pre>
- it is a stand-alone distributed version control tool
- developed by Linus Torvalds, father of Linux Kernel
- Linux kernel primariliy uses Git
- Git supports only command-line
- GitHub is developed by a different with webconsole over Git
- Git follows 2-stage commit strategy
- Git Repository
  - is a folder tracked by Git Version Control Software utility
</pre>


## Lab - Creating an empty Git repository on your RPS Cloud Lab machine

```
cd ~
mkdir git-demo
cd git-demo
git init
git config --global user.name "Jeganathan Swaminathan"
git config --global user.email "mail2jegan@gmail.com"
git config --global --list
git config --list
ls -lha
tree .git
```

## Lab - Staging and commit files to master branch
Note
<pre>
- By default git will create master branch
- We can check the list of branches using git branch command
</pre>

Let's create file and make some changes and commit the changes in the master branch
```
cd ~/git-demo
git status
touch cars.txt
echo "Maruti 800" > cars.txt
git status

#Let's stage our changes before commiting changes
git add cars.txt
git status
git commit -m "Added Maruti 800 from master branch"
git status
git log

echo "Maruti Zen" >> cars.txt
cat cars.txt
git add cars.txt
git commit -m "Added Maruti Zen from master branch
git status
git log
```

## Lab - Creating branch and making changes in new branch
```
cd ~/git-demo
git status
ls -l
cat cars.txt

#Create a new branch called dev-1.0
git branch dev-1.0

#List the branches in the repo and check which is currently active
git branch

#To switch to a particular branch within the repo
git checkout dev-1.0
git branch

git checkout master
git branch

git checkout dev-1.0
git branch
touch fruits.txt
echo "Apple" > fruits.txt
git add fruits.txt
git commit -m "Added Apple in fruits.txt from dev-1.0 branch"
git status

echo "Orange" > fruits.txt
git add fruits.txt
git commit -m "Added Orange in fruits.txt from dev-1.0 branch"
git status
git log


# Switch to master branch and confirm - you are not supposed to see the fruits.txt created in dev-1.0 branch
git checkout master
git branch
ls -l
git log

## See the diff
git show
```

## Lab - Remove changes from staging area
```
cd ~/git-demo
git status
git branch
echo "Skoda Kodiaq" >> cars.txt
git status
git add *
git status

#Remove/Discard the change from the staging area
git restore --staged cars.txt
git status

# The changes made in the file will be kept intact in your local file system, hence you haven't lost your changes
cat cars.txt


# Revert changes done to the local file cars.txt and revert it back to last committed state
cat cars.txt
git restore cars.txt

#You will not see the Skoda Kodiaq anymore in the file cars.txt as it reverted to last committed change from repo to local
cat cars.txt
```

## Git Reset - Discard the last commit changes from Repo
```
cd ~/git-demo
git branch
git checkout master

#Let's add Audi Q7 to cars.txt in master branch
echo "Audi Q7" >> cars.txt
git add cars.txt
git commit -m "Added Audi Q7 to cars.txt in master branch
git status
cat cars.txt

# At this point you will see Audi Q7
cat cars.txt

# Let's discard the last commit
git reset --soft HEAD~1

#You will see the Audi Q7 changes in the staged state
git status

git restore --staged cars.txt

# Discard changes in the local file cars.txt
git restore cars.txt
git status

#At this point,your cars.txt will not have Audi Q7 and change history would have been rewritten, hence it would look like you never added Audi Q7
git log
```
