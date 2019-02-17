echo Trying to hard-link $(realpath ./my_vimrc) to ~/.vimrc
ln ./my_vimrc ~/.config/nvim/init.vim && 
	echo Success! &&
	exit
echo
read -p "Do you want to remove your existing ~/.vimrc and link to this one?" -n 1 -r
echo   
if [[ $REPLY =~ ^[Yy]$ ]]
then
ln ./my_vimrc ~/.config/nvim/init.vim && 
	echo Success!
fi 
