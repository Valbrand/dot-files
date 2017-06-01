# !/bin/bash
#############
# .make.sh
#############
dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc"

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "done."

echo "Symlinking new dotfiles..."
for file in $files; do
	echo "Moving existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/$olddir/
	echo "Creating symlink for .$file"
	ln -s $dir/.$file ~/.$file
done

