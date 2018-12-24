# Allomancer vim

A dark vim colorscheme, inspired mainly by [vim-two-firewatch](https://github.com/rakr/vim-two-firewatch) but using colors from [apprentice](https://github.com/romainl/Apprentice) and some code from both apprentice and [monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty). All credit for the source code goes to the original authors. I just put it all together in a way that matched what I like and I hope to grow this colorscheme with my own ideas and improvements in the future.

## Installation

To install the colorscheme you can either:

1. Use a plugin manager such as [vim-plug](https://github.com/junegunn/vim-plug). Add the following to your vimrc and run :PlugInstall:

    Plug 'Nequo/vim-allomancer'

2. Manually clone/download the repo and move the file allomancer.vim to ".vim/colors/"


## Using the colorscheme

Once installed add the following to your .vimrc

    colo allomancer 

## The colorscheme isn't working?

This is still a work in progress and the colors I use aren't in the 256 xterm colorspace. One "workaround" that I use is to use the matching colorscheme for your terminal so that the colors defined by the cterm calls match the gui ones. Here's an example .Xresources file that you can use. Plug it into [terminal.sexy](terminal.sexy) and export to your terminal's format.

    *.foreground: #abb2bf
    *.background: #282c34

    *.color0:     #2c323c
    *.color8:     #55606d
    
    *.color1:     #e06c75
    *.color9:     #af5f5f
    
    *.color2:     #87AF87
    *.color10:    #87AF87
    
    *.color3:     #D7AFAF
    *.color11:    #FF875F
    
    *.color4:     #6E88A6
    *.color12:    #6E88A6
    
    *.color5:     #D18EC2
    *.color13:    #8787AF
    
    *.color6:     #5fafaf
    *.color14:    #5fafaf
    
    *.color7:     #ABB2BF
    *.color15:    #ECEFF4

It's also available in the repo as allomancer.Xresources.

## Screenshot

Here's some samples of what it looks like for me in gnome-terminal with the [Iosevka](https://github.com/be5invis/Iosevka) font:

- Markdown, python and nerdTree
![allomancer](/images/allomancer-vim.png)

-Markdown, html and css
![allomancer](/images/allomancer-vim2.png)
