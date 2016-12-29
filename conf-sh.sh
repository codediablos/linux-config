SETTINGS=$HOME/linux-config

mkdir $HOME/.fonts
mkdir -p $HOME/.config/fontconfig/conf.d

cp $SETTINGS/fonts/* $HOME/.fonts
cp $SETTINGS/font-conf/* $HOME/.config/fontconfig/conf.d/

fc-cache -vf $HOME/.fonts/

ln -s $SETTINGS/oh-my-zsh $HOME/.oh-my-zsh
ln -s $SETTINGS/.zshrc $HOME/.zshrc
ln -s $SETTINGS/.bashrc $HOME/.bashrc
ln -s $SETTINGS/.tmux.conf $HOME/.tmux.conf

git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k

ln -s $HOME/emacs-setting/.emacs $HOME/.emacs
ln -s $HOME/emacs-setting/.emacs.d $HOME/.emacs.d
