# The Golden Snitch Sniffer
This is a project that uses multiple long-range ultrasonic sensors to find an track an object flying in three-dimensional space. It displays the object's coordinates, speed, and trajectory through a VR headset.

# Codes for creating github:
pi@raspberrypi:~ $ git --global user.name "Pieter-Jaap Haarhuis"
unknown option: --global
usage: git [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           <command> [<args>]
pi@raspberrypi:~ $ git config --global user.name "Pieter-Jaap Haarhuis"
pi@raspberrypi:~ $ git config --global user.email "pieter-jaap.haarhuis@hva.nl"
pi@raspberrypi:~ $ git config --global core.editor init
pi@raspberrypi:~ $ mkdir snitch-sniffer
pi@raspberrypi:~ $ cd snitch-sniffer
pi@raspberrypi:~/snitch-sniffer $ README.md
bash: README.md: command not found
pi@raspberrypi:~/snitch-sniffer $ # The Golden Snitch Sniffer
pi@raspberrypi:~/snitch-sniffer $ dir
README.md
pi@raspberrypi:~/snitch-sniffer $ ls
README.md
pi@raspberrypi:~/snitch-sniffer $ git init
Initialized empty Git repository in /home/pi/snitch-sniffer/.git/
pi@raspberrypi:~/snitch-sniffer $ ls
README.md
pi@raspberrypi:~/snitch-sniffer $ dir /A
dir: cannot access '/A': No such file or directory
pi@raspberrypi:~/snitch-sniffer $ ls -a
.  ..  .git  README.md
pi@raspberrypi:~/snitch-sniffer $ ls -a .git
.  ..  branches  config  description  HEAD  hooks  info  objects  refs
pi@raspberrypi:~/snitch-sniffer $ git add README.md
pi@raspberrypi:~/snitch-sniffer $ git add --all
pi@raspberrypi:~/snitch-sniffer $ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

	new file:   README.md

pi@raspberrypi:~/snitch-sniffer $ git commit -am "add README.md"
[master (root-commit) 27997b7] add README.md
 1 file changed, 2 insertions(+)
 create mode 100644 README.md
pi@raspberrypi:~/snitch-sniffer $ git log README.md
commit 27997b70118c293cfa903f122561d589acf03a27 (HEAD -> master)
Author: Pieter-Jaap Haarhuis <pieter-jaap.haarhuis@hva.nl>
Date:   Thu Nov 4 11:15:06 2021 +0100

    add README.md
pi@raspberrypi:~/snitch-sniffer $ git status
On branch master
nothing to commit, working tree clean
pi@raspberrypi:~/snitch-sniffer $ git checkout -b lidar-version
Switched to a new branch 'lidar-version'
pi@raspberrypi:~/snitch-sniffer $ git status
On branch lidar-version
nothing to commit, working tree clean
pi@raspberrypi:~/snitch-sniffer $ git branche
git: 'branche' is not a git command. See 'git --help'.

The most similar command is
	branch
pi@raspberrypi:~/snitch-sniffer $ git branch
* lidar-version
  master
pi@raspberrypi:~/snitch-sniffer $ git checkout master
Switched to branch 'master'
pi@raspberrypi:~/snitch-sniffer $ git merge lidar-version
Already up to date.
pi@raspberrypi:~/snitch-sniffer $ git remote add origin https://github.com/pieter-jaap/Snitch-sniffer.git
pi@raspberrypi:~/snitch-sniffer $ git push -u origin master
Username for 'https://github.com': 
Password for 'https://github.com': 
remote: No anonymous write access.
fatal: Authentication failed for 'https://github.com/pieter-jaap/Snitch-sniffer.git/'
pi@raspberrypi:~/snitch-sniffer $ 
pi@raspberrypi:~/snitch-sniffer $ git push -u origin master
Username for 'https://github.com': Pieter-Jaap
Password for 'https://Pieter-Jaap@github.com': 
remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.
fatal: Authentication failed for 'https://github.com/pieter-jaap/Snitch-sniffer.git/'
pi@raspberrypi:~/snitch-sniffer $ git clone https://github.com/HelpfulUser/Snitch-sniffer
Cloning into 'Snitch-sniffer'...
Username for 'https://github.com': Pieter-Jaap
Password for 'https://Pieter-Jaap@github.com': 
remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.
fatal: Authentication failed for 'https://github.com/HelpfulUser/Snitch-sniffer/'
pi@raspberrypi:~/snitch-sniffer $ \q
