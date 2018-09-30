#!/bin/bash

DOTFILES=(.bash_profile .vimrc .zshrc .zprofile )

for f in ${DOTFILES[@]}
do
  # 無視したいファイルやディレクトリはこんな風に追加
  [[ ${f} = ".DS_Store" ]] && continue
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  ln -snfv $HOME/dotfiles/${f} ${HOME}/${f}
done

if [ ! -d ~/.zplug ]; then
  curl -sL zplug.sh/installer | zsh
fi

echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)

