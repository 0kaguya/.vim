# My Vim Config

my own ideas about vim are all of *quick and lightweight editing*. thus
it will be a minimal configuration for vim. it contains:

- commonly used vim configuration.
- basic language supports such as syntax highlighting.
- **tons of shortkeys**.


## Install

#### Dependencies

- vim/gvim
- git
- xsel

assuming you are on a `*unix` environment. run command in terminal:

``` bash
$ rm -rf ~/.vim ~/.vimrc
$ git clone https://github.com/0kaguya/vimrc.git ~/.vim
```

after that, open vim to wait til plugins all installed.

## Usage

when edit a file with specific type at first time, type `:PlugInstall`
and press return to install plugins for current filetype.

## Details

I'm going on *competitive programming*. that's to say I'm facing a tiny
subset of c++. I'm trying to make writing c++ like a DSL; that could be
tricky and limitted, but it works.
