#!/usr/bin/env bash

src_dir=~/.vim
dst_file=vim-plugins.zip

cp -r "${src_dir}" ./
zip -r "${dst_file}" .vim/
rm -rf .vim
