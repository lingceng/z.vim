# z.vim

Help jumping to the most used directories in vim.

This plugin make vim work with [z](https://github.com/rupa/z).
So you need to install https://github.com/rupa/z first.

## Installation

If you don't have a preferred installation method, I recommend
installing [Vundle.vim](https://github.com/VundleVim/Vundle.vim), and
add following to your ~/.vimrc:

    Plugin 'lingceng/z.vim'

## Usage
If you always do `cd ~/workspace/document/nice` in shell.
Do following to open the folder:

    :Z nice

## Version
(0.1) Avoid using lambda, so that plugin works on older Vim versions.

## License

Copyright (c) Lingceng.  Distributed under the same terms as Vim itself.
See `:help license`.
