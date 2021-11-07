# checking the status in Git
pi@raspberrypi:~/RSL/snitch-sniffer $ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
pi@raspberrypi:~/RSL/snitch-sniffer $ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

# Adding all different files in the folder on Github
pi@raspberrypi:~/RSL/snitch-sniffer $ git add --all
pi@raspberrypi:~/RSL/snitch-sniffer $ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   Harry Potter Starring.sql
	new file:   Harry Potter Summary.sql
	new file:   Harry Potter Title.sql
	new file:   Overall file
	modified:   README.md
	new file:   Starring.sql
	new file:   Top 50 recommendations Summary
	new file:   moviesFromMetacritic.csv
	new file:   python XYZ.py
	new file:   title.sql
	new file:   top50recommendationsHarryStarring.csv
	new file:   top50recommendationsHarrySummary.csv
	new file:   top50recommendationsHarryTitle.csv
	new file:   top50recommendationsStarring.csv
	new file:   top50recommendationsTitle.csv


# trying to enter github
pi@raspberrypi:~/RSL/snitch-sniffer $ git push origin master
Username for 'https://github.com': Pieter-Jaap
Password for 'https://Pieter-Jaap@github.com': 
remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.
fatal: Authentication failed for 'https://github.com/pieter-jaap/Snitch-sniffer.git/'
pi@raspberrypi:~/RSL/snitch-sniffer $ git push origin master
Username for 'https://github.com': Pieter-Jaap
Password for 'https://Pieter-Jaap@github.com': 
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 398 bytes | 199.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
remote: This repository moved. Please use the new location:
remote:   https://github.com/Pieter-Jaap/Snitch-sniffer.git
remote: 
remote: Create a pull request for 'master' on GitHub by visiting:
remote:      https://github.com/Pieter-Jaap/Snitch-sniffer/pull/new/master
remote: 
To https://github.com/pieter-jaap/Snitch-sniffer.git
 * [new branch]      master -> master
pi@raspberrypi:~/RSL/snitch-sniffer $ git push origin master
Username for 'https://github.com': Pieter-Jaap
Password for 'https://Pieter-Jaap@github.com': 
Everything up-to-date

# Adding all the files in the folder in Github again
pi@raspberrypi:~/RSL/snitch-sniffer $ git add --all
pi@raspberrypi:~/RSL/snitch-sniffer $ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   Harry Potter Starring.sql
	new file:   Harry Potter Summary.sql
	new file:   Harry Potter Title.sql
	new file:   Overall file
	modified:   README.md
	new file:   Starring.sql
	new file:   Top 50 recommendations Summary
	new file:   moviesFromMetacritic.csv
	new file:   python XYZ.py
	new file:   title.sql
	new file:   top50recommendationsHarryStarring.csv
	new file:   top50recommendationsHarrySummary.csv
	new file:   top50recommendationsHarryTitle.csv
	new file:   top50recommendationsStarring.csv
	new file:   top50recommendationsTitle.csv

# Still could not find the documents in the right repository in Github, so trying to add files again
pi@raspberrypi:~/RSL/snitch-sniffer $ git commit -am "add README.md"
[master abe9645] add README.md
 15 files changed, 6284 insertions(+)
 create mode 100644 Harry Potter Starring.sql
 create mode 100644 Harry Potter Summary.sql
 create mode 100644 Harry Potter Title.sql
 create mode 100644 Overall file
 create mode 100644 Starring.sql
 create mode 100644 Top 50 recommendations Summary
 create mode 100644 moviesFromMetacritic.csv
 create mode 100644 python XYZ.py
 create mode 100644 title.sql
 create mode 100644 top50recommendationsHarryStarring.csv
 create mode 100644 top50recommendationsHarrySummary.csv
 create mode 100644 top50recommendationsHarryTitle.csv
 create mode 100644 top50recommendationsStarring.csv
 create mode 100644 top50recommendationsTitle.csv
pi@raspberrypi:~/RSL/snitch-sniffer $ git status
On branch master
nothing to commit, working tree clean
pi@raspberrypi:~/RSL/snitch-sniffer $ git add --all
pi@raspberrypi:~/RSL/snitch-sniffer $ git status
On branch master
nothing to commit, working tree clean
pi@raspberrypi:~/RSL/snitch-sniffer $ git remote origin2
error: Unknown subcommand: origin2
usage: git remote [-v | --verbose]
   or: git remote add [-t <branch>] [-m <master>] [-f] [--tags | --no-tags] [--mirror=<fetch|push>] <name> <url>
   or: git remote rename <old> <new>
   or: git remote remove <name>
   or: git remote set-head <name> (-a | --auto | -d | --delete | <branch>)
   or: git remote [-v | --verbose] show [-n] <name>
   or: git remote prune [-n | --dry-run] <name>
   or: git remote [-v | --verbose] update [-p | --prune] [(<group> | <remote>)...]
   or: git remote set-branches [--add] <name> <branch>...
   or: git remote get-url [--push] [--all] <name>
   or: git remote set-url [--push] <name> <newurl> [<oldurl>]
   or: git remote set-url --add <name> <newurl>
   or: git remote set-url --delete <name> <url>

    -v, --verbose         be verbose; must be placed before a subcommand

pi@raspberrypi:~/RSL/snitch-sniffer $ git push origin2 master
fatal: 'origin2' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
pi@raspberrypi:~/RSL/snitch-sniffer $ git remote add origin2 ^C
pi@raspberrypi:~/RSL/snitch-sniffer $ git remote add origin2 https://github.com/Pieter-Jaap/Snitch-sniffer
pi@raspberrypi:~/RSL/snitch-sniffer $ git push -u origin2 master
Username for 'https://github.com': Pieter-Jaap
Password for 'https://Pieter-Jaap@github.com': 
Enumerating objects: 18, done.
Counting objects: 100% (18/18), done.
Delta compression using up to 4 threads
Compressing objects: 100% (16/16), done.
Writing objects: 100% (16/16), 1.52 MiB | 242.00 KiB/s, done.
Total 16 (delta 5), reused 0 (delta 0)
remote: Resolving deltas: 100% (5/5), done.
To https://github.com/Pieter-Jaap/Snitch-sniffer
   27997b7..abe9645  master -> master
Branch 'master' set up to track remote branch 'master' from 'origin2'.
pi@raspberrypi:~/RSL/snitch-sniffer $ ir
bash: ir: command not found
pi@raspberrypi:~/RSL/snitch-sniffer $ dir
Harry\ Potter\ Starring.sql  title.sql
Harry\ Potter\ Summary.sql   top50recommendationsHarryStarring.csv
Harry\ Potter\ Title.sql     top50recommendationsHarrySummary.csv
moviesFromMetacritic.csv     top50recommendationsHarryTitle.csv
Overall\ file		     top50recommendationsStarring.csv
python\ XYZ.py		     Top\ 50\ recommendations\ Summary
README.md		     top50recommendationsTitle.csv
Starring.sql
pi@raspberrypi:~/RSL/snitch-sniffer $ git init
Reinitialized existing Git repository in /home/pi/RSL/snitch-sniffer/.git/
pi@raspberrypi:~/RSL/snitch-sniffer $ dir /A
dir: cannot access '/A': No such file or directory
pi@raspberrypi:~/RSL/snitch-sniffer $ ls -a
 .                            README.md
 ..                           Starring.sql
 .git                         title.sql
'Harry Potter Starring.sql'   top50recommendationsHarryStarring.csv
'Harry Potter Summary.sql'    top50recommendationsHarrySummary.csv
'Harry Potter Title.sql'      top50recommendationsHarryTitle.csv
 moviesFromMetacritic.csv     top50recommendationsStarring.csv
'Overall file'               'Top 50 recommendations Summary'
'python XYZ.py'               top50recommendationsTitle.csv
pi@raspberrypi:~/RSL/snitch-sniffer $ ls -a .git
.   branches        config       HEAD   index  logs     ORIG_HEAD
..  COMMIT_EDITMSG  description  hooks  info   objects  refs
pi@raspberrypi:~/RSL/snitch-sniffer $ git add Starring.sql
pi@raspberrypi:~/RSL/snitch-sniffer $ git add --all
pi@raspberrypi:~/RSL/snitch-sniffer $ git status
On branch master
Your branch is up to date with 'origin2/master'.

nothing to commit, working tree clean
pi@raspberrypi:~/RSL/snitch-sniffer $ git pull
remote: Enumerating objects: 45, done.
remote: Counting objects: 100% (45/45), done.
remote: Compressing objects: 100% (39/39), done.
remote: Total 45 (delta 17), reused 12 (delta 4), pack-reused 0
Unpacking objects: 100% (45/45), done.
From https://github.com/Pieter-Jaap/Snitch-sniffer
 * [new branch]      main       -> origin2/main
Already up to date.
pi@raspberrypi:~/RSL/snitch-sniffer $ git push
Username for 'https://github.com': Pieter-Jaap
Password for 'https://Pieter-Jaap@github.com': 
Everything up-to-date
