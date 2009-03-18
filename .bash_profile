if [ -e $HOME/.bashrc ]; then
	source $HOME/.bashrc
elif [ -e /etc/bashrc ]; then
	source /etc/bashrc
fi
