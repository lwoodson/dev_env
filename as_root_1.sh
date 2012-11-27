# Install Guest Additions dependencies.
rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
wget http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
yum localinstall -y rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
yum --enablerepo rpmforge install -y dkms
yum groupinstall -y "Development Tools"
yum install -y kernel-devel
yum upgrade -y kernel
echo VirtualBox Guest Extensions dependencies installed.  
echo Rebooting in 5 seconds.  When the machine has rebooted,
echo open a terminal and execute setup_2.sh to install the
echo dev environment.
reboot 5
