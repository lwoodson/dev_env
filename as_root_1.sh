# Install Guest Additions dependencies.
echo "Installing VirtualBox Guest Additions dependencies"
rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
wget http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
yum localinstall -y rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
yum --enablerepo rpmforge install -y dkms
yum groupinstall -y "Development Tools"
yum install -y kernel-devel
yum upgrade -y kernel
echo "VirtualBox Guest Additions dependencies installed."
echo "Mount the guest extensions CD via the VirtualBox >"
echo "Devices > Install Guest Additions or VirtualBox >"
echo "Devices > CD/DVD Devices > Choose a Virtual CD/DVD File."
echo "When the guest extensions CD is mounted, reboot."
