**Commonly used terminal commands that
span nearly all Linux distributions**

[*http://centoshelp.org/resources/commands/linux-system-commands/*](http://centoshelp.org/resources/commands/linux-system-commands/)

**| A |**

**alias** la=’ls -lAXh –color=always|less -R’ (Now issuing the command ‘la’ will actually run a long listing, in color, sorted by extension.) Also see: **unalias**

**apropo**s search (this command displays a list of possible commands and their respective descriptions with the string “search” in the command or in the command description.)

**| B |**

**bcwipe** -ng -r -v /home/temp (this command will do a 35 pass; recursive; verbose DoD wipe on /home/temp. Usually, bcwipe is used on an entire drive or partition where sensitive or personal data has been kept to prevent recovery of the data if the drive or system is being sold or given to an unknown party.)

**| C |**

**cd** /etc/X11 (this command changes the current working directory (cwd) to /etc/X11)

**chkconfig** –level 2345 httpd on (the command adds the httpd daemon to start at runlevels 2,3,4 and 5.)

**chmod** -Rf 700 /home (this command changes everything under /home and all subdirectories to rwx only for the owner of the file or directory or root.)

**chown** -R user1:user1 /home/testing (this command changes the file ownership and group ownership of every subdirectory under /home/testing to user1.)

**cp** ~/foo.txt /mnt/storage (this command copies the file “foo.txt” from /home/user1/foo.txt to /mnt/storage/foo.txt)

**| D |**

**dd** if=/dev/dvd of=dvd\_foo.iso (this command creates an iso image from the device /dev/dvd and writes to a local file (dvd\_foo.iso) in the (cwd) current working directory.)

**df** -h (this command displays the used/free space ratio on all currently mounted filesystems.)

and the notion of ‘‘file with the same name’’ does not apply. diff options begin with -, so normally from-file and to-file may not begin with -. However, — as an argument by itself treats the remaining arguments as file names even if they begin with -. diif /var/log/messages /var/log/messages.saved (this command displays the differences between the 2 files.)

**dstat** -f (this command displays realtime stats in the system console.)

**du** -chs /home (this command displays in user readable format the space usage for the directory /home)

**| E |**

**exit** (this command will exit the current (\# root) shell and drop the user back to the ($ user) prompt, if logged in via su or su -. )

**| F |**

**fdisk** -l (this command lists the currently detected partitions and partition types. Use the man page to understand the full scope of this very useful and powerful command.)

**find** ~ -name foo (this searches the user1′s home and any subdirectories for any occurrence of “foo” and displays the results, if any.)

**fsck** -y /dev/hda1 (this command forces a filesystem check on the partition hda1 and fixes any errors encountered without prompting the user to “ok” any confimation dialogs. use with caution and read the man page.)

**fuser** -m /mnt/floppy (this command searches for processes using /mnt/floppy and displays the results.)

**| G |**

**rpm** -qa | grep foo (this command searches the rpm database for a string “foo” and prints any matches it encounters.)

**groupadd** mytestgroup (this command creates a group on the system called mytestgroup.)

**| H |**

**head** mytextfile.txt (this command outputs the the first N lines of the file mytextfile.txt. by defauilt this is 10 lines.)

**hostname** hostname (this command displays the current hostname.)

**| I |**

**ifconfig** (this command issued by itself will print all currently configured network interfaces.)

**ifdown** eth0 (this command brings the network interface ‘eth0′ down or offline.)

**iftop** -i wlan0 (this command listens on the wlan0 interface and displays information about traffic statistics.)

**ifup** eth0 (this command brings the network interface ‘eth0′ up or online.)

init 3 (this command brings the system into init 3 text-only mode.)

**iptraf** (this command starts iptraf in the terminal.)

**| J |**

**jwhois** google.com (this command queries the whois database for the contact and domain registration details of google.com.)

**| K |**

**kill** -9 27068 (this command terminates a process with a process id of 27058 found by using the command ps aux.)

**| L |**

**last** (this command lists all of the users who have recently logged into or out of the system.)

**terminals.** There is even limited support for hardcopy terminals. (on a hardcopy terminal, lines which should be printed at the top of the screen are prefixed with a caret.) less -p CPU /var/log/dmesg (this command searches /var/log/dmesg for any instance of the string ‘CPU’ and displays those lines with ‘CPU’ highlighted.)

**locate** gimp (this command searches a secure database starting at / for the given string. note: you must first run the command updatedb before using locate.)

**ls** -als (this command lists all of the files and subdirectories in the current working directory (cwd) and their respective permissions. to slow down long directory listings use: ls -als | less use q to exit.)

**lspci** -v (this command lists all of the pci devices detected by the system in verbose mode.)

**lsusb** -v (this command lists all of the usb devices detected by the system in verbose mode.)

**| M |**

**man** sudo (this command will display the sudo command man page and a verbose list of options and usage.)

**more** +3 myfile.txt (in this example we would see the results of myfile.txt displayed starting at line 3)

**mount** -t ext3 /dev/hdk3 /mnt/foo (this command mounts partition 3 on the hard disk /dev/hdk on /mnt/foo where the user can then access it with the proper rwx permissions. automounting filesystems can be taken care of in /etc/fstab)

**mv** foo.rpm foo2.rpm (this command renames “foo.rpm” to “foo2.rpm” within the same directory.)

**| N |**

**nano** /var/log/dmesg (this command displays the text file /var/log/dmesg in a terminal window and presents it for editing or reading.)

**| O |**

**octave** –help (this command will display the options for the octave command.)

**| P |**

**passwd** newuser (this command prompts the issuer to provide a new password for the given user and then updates the password database accordingly replacing the previous password with the new one.)

**pkill** -HUP syslogd (this command  makes syslog re-read its configuration file.)

**ps** aux (this command displays the currently running processes among other important data about the respective processes.)

**pwd** (this command prints the current path/working directory in your shell, such as: /home/user1/foo)

**| Q |**

**quota** user1 (this command displays the requested users disk quota usage and limits.)

**| R |**

**rm** -rf ~/temp (this command removes the directory /home/user1/temp)

**rsync** -avz -e ssh rsync@remote.acme.com:/home/rsync/out/ /home/rsync/from\_remote (this command copies the contents of /home/rsync/out to /home/rsync/from\_remote on a remote system.) (An important thing here, is that the presence or absence of a trailing “/” in the source directory determines whether the directory itself is copied, or simply the contents of this source directory. Leaving out the trailing slash creates the new directory “out” on the remote machine.)

**| S |**

**service** httpd restart (this command restarts a running httpd daemon or starts an idle/stopped httpd daemon.)

**shutdown** -r now (this command shuts the system down immediately and reboots.)

**ssh** 192.168.0.10 (this command initiates a secure shell connection between the localhost computer and the internal local network computer at 192.168.0.10.)

**stat** /home (this command displays the status of the /home directory such as, block size, inodes, links, access and last modified date(s), among other user definable variables.)

**strace** -p 3284 (this command will start a trace on all system calls and signals associated with process \# 3284.)

**su** – (this command will prompt the user for the root password and, if supplied correctly, logs the user into roots profile. the – denotes that the user should inherit roots profile and path. this is quite helpful when issuing commands from many directories without typing the entire path to the command. system administrators should see the “sudo” command for extending certain privileges to users who do not need or cannot be trusted with the root password.)

**sudo** mount -t ext3 /dev/hdk3 /mnt/foo (this command allows a normal user with sudo privileges to issue a command that requires elevated privileges to run. the user will be required to enter their own password to complete the command by default, this option can be changed to not require a password. see: man sudoers)

**| T |**

**tail** -n 5 vhosts.conf (this command outputs the last 5 lines of the file vhosts.conf to the terminal.)

**tar** -xvfz foo.tar.gz (this command uncompresses the file foo.tar.gz into the cwd.)

**top** -u user1 (this command shows all the processes owned by user1 in realtime in the terminal.)

**| U |**

**uname** -a (this command prints information about the currently running kernel as well as other information.)

**useradd** -d -g 500 newuser (this command adds a new user to the system with a home directory of /home/newuser and a group id of 500. Alternatively, you can also use somehing like ‘ftp’ instead of ’500′ to specify what group(s) you want to add the new user to. see also: man adduser and userdel / deluser.)

**usermod** -a -G sshusers user1 (this command adds user1 to the group sshusers.)

**| V |**

**vi** /var/log/dmesg (this command displays the text file /var/log/dmesg in a terminal window and presents it for editing or reading.). Refer to document **301-F02**.

**| W |**

**wall** how’s everyone doing today? (this command prints the message “how’s everyone doing today?” to the terminal.)

**wc** -l /var/log/dmesg (this command displays the total number of lines in the text file /var/log/dmesg.)

**who** -last (this command displays verbose output of the users and processes logged into the system.)

whois – (see jwhois.)

**| X |**

**xrandr** –verbose (this command shows the current reflection, rotation and other information.)

**xwininfo** – Xwininfo is a utility for displaying information about windows. Various
information is displayed depending on which options are selected. If no options are chosen, -stats is assumed. The user has the option of selecting the target window with the mouse (by clicking any mouse button in the desired window) or by specifying its
window id on the command line with the -id option. Or instead of specifying the window by its id number, the -name option may be used to specify which window is desired by name. There is also a special -root option to quickly obtain information on the
screen’s root window.**
xwininfo** (this command displays the geometry for the specified window.)

**| Y |**

**yum** –exclude=kernel\* update (this common command initiates a full system update, while telling yum to exclude / ignore any kernel packages.)

**| Z |**

**zip -**r foo1 foo2 (this command creates the archive foo2.zip, containing all the files and directories in the directory foo1 that is contained within the current directory.)
