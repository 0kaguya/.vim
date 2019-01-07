# My Vim Config

my ideas about vim are all of *quick and lightweight editing*. thus it
will be a minimal configuration for vim. it contains:

- commonly used vim configuration.
- basic language supports such as syntax highlighting.
- **tons of shortkeys**.


## Install

### Dependencies

- vim/gvim
- git
- xsel

assuming you are on a `*unix` environment. run command in terminal:

``` bash
$ rm -rf ~/.vim ~/.vimrc
$ git clone https://github.com/0kaguya/vimrc.git .vim
```

after that, open vim to wait til plugin installed.

## Usage

when edit a file with specific type at first time, type `:PlugInstall` and
press return to install plugins for current filetype.

## Details

I'm going on *competitive programming*. that to say I'm working on a tiny
subset of c++. my current goal of this config is to make programming in
c++ like a DSL. it's tricky and limitted.
