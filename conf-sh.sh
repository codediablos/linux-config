SETTINGS=$HOME/linux-config

# font config
mkdir $HOME/.fonts
mkdir -p $HOME/.config/fontconfig/conf.d

cp $SETTINGS/fonts/* $HOME/.fonts
cp $SETTINGS/font-conf/* $HOME/.config/fontconfig/conf.d/

fc-cache -vf $HOME/.fonts/

# rc files
ln -s $SETTINGS/oh-my-zsh $HOME/.oh-my-zsh
ln -s $SETTINGS/.zshrc $HOME/.zshrc
ln -s $SETTINGS/.bashrc $HOME/.bashrc
ln -s $SETTINGS/.tmux.conf $HOME/.tmux.conf

# emacs
git clone https://github.com/codediablos/emacs-setting.git
ln -s $HOME/emacs-setting/.emacs $HOME/.emacs
ln -s $HOME/emacs-setting/.emacs.d $HOME/.emacs.d

# zsh config
#git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
ln -s $SETTINGS/pure/pure.zsh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/pure.zsh-theme
ln -s $SETTINGS/pure/async.zsh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/async.zsh
