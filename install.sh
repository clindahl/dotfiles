# Claes dotfiles

#Installationvariables

dir=~/dotfiles
olddir=~/dotfiles_old
files=".bashrc .vimrc .tmux.conf .vim .fonts installfonts.sh .netrwhist"

# backup of old files
echo "Backup up dotfiles in ~"
mkdir -p $olddir
echo "...done"

# moving files 
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/$file
done

# install powerline fonts 
source ~/installfonts.sh 

source ~/.bashrc
source ~/.vimrc
