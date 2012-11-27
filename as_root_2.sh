# Install guest additions.
echo "Installing VirtualBox Guest Additions"
cd /media/VBOXADDITIONS*
./VBoxLinuxAdditions.run


echo "Intalling packages"
sudo cp -r ~/.dev_env/etc/* /etc/
sudo yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel \
                    libyaml-devel libffi-devel openssl-devel make bzip2 \
                    autoconf automake libtool bison gcc screen tmux vim \
                    kernel-devel

echo as_root_2.sh finished and rebooting in 5 seconds.  After reboot,
echo log in as your primary user and run as_user.sh.
sleep 5
reboot

