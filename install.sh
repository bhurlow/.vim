#! /bin/bash

mkdir ~/.vim/bundle
pushd ~/.vim/bundle

packages=(
 ctrlpvim/ctrlp.vim
 easymotion/vim-easymotion
 ervandew/supertab
 guns/vim-clojure-static
 dag/vim-fish
 tpope/vim-repeat
 tpope/vim-surround
 mattn/emmet-vim
 godlygeek/tabular
 tpope/vim-commentary
 tpope/vim-fireplace
 bhurlow/vim-parinfer
 tpope/vim-unimpaired
 tpope/vim-speeddating
)

for x in "${packages[@]}"
do
  echo $var
  git clone git@github.com:$x.git
done

