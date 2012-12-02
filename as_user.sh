echo "Setting up dev environment"

# Backup original
backup_file="`pwd`/backups/env_`date +"%m%d%Y%H%M%S"`.tar.gz"
echo "Backing up existing env to $backup_file"
tar --ignore-failed-read -cvf $backup_file ~/bin ~/Projects \
                                           ~/.{profile,bashrc,irbrc,vim,vimrc,dircolors} 2> /dev/null

# remove originals
echo "Removing environment files"
rm -rf ~/.profile
rm -rf ~/.bashrc
rm -rf ~/.irbrc
rm -rf ~/.vim
rm -rf ~/.vimrc
rm -rf ~/.dircolors
rm -rf ~/bin
rm -rf ~/Projects

# Link or create environment files.
echo "Linking .files"
ln -s ~/.dev_env/profile ~/.profile
ln -s ~/.dev_env/bashrc ~/.bashrc
ln -s ~/.dev_env/irbrc ~/.irbrc
ln -s ~/.dev_env/vim ~/.vim
ln -s ~/.dev_env/vim/vimrc ~/.vimrc
ln -s ~/.dev_env/dircolors ~/.dircolors
echo "Creating ~/bin scripts for user"
ln -s ~/.dev_env/bin ~/bin
echo "Creating ~/Projects directory"
mkdir ~/Projects

# install packages
echo "Installing user packages"
sudo yum install -y gvim google-chrome-stable libreoffice lynx gimp subversion \
                    dia postgresql postgresql-server postgresql-devel \
                    mysql mysql-server mysql-devel sqlite sqlite-devel ctags 

# RVM setup
echo "Installing RVM"
curl -L https://get.rvm.io | bash -s stable --ruby
touch ~/.rvm/gemsets/global.gems
echo -e "wirble\nawesome_print\nlooksee" > ~/.rvm/gemsets/global.gems
source ~/.rvm/scripts/rvm
cat ~/.rvm/gemsets/global.gems | xargs gem install

# Create an ssh-key
echo "Generating ssh key"
ssh-keygen -t rsa

echo "Dev environment setup complete.  Rebooting."
sleep 5
reboot
