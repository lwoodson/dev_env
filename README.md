# Dev Env #
My personal dev environment extracted into a project to make it easier to bring
systems up to my liking.  This assumes a CentOS install in VirtualBox.

## Use ##
Logged in as root:
```shell
yum install git
git checkout [path_to_repo] ~/.dev_env
cd ~/.dev_env
./as_root_1.sh
```
This upgrades the kernel and installs all dependencies for VirtualBox Guest
Additions to be installed.  It will reboot when finished.  Log in as root again
and mount the guest additions CD image (VirtualBox > Devices > Install Guest
Additions).
```shell
cd ~/.dev_env
./as_root_2.sh
```
This will install the guest additions and some other common packages.  Again,
it will reboot when finished.  This time, log in as a primary user:
```shell
git checkout [path_to_repo] ~/.dev_env
cd ~/.dev_env
./as_user.sh
```
This will create the environment for the user and set everything up for them to
have a reasonable dev environment.

## Todo ##
* extract root stuff into own project (centos virtualbox helpers)
* Make this into a bootable iso image using kickstart.
