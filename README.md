vim-airline-todo
==================
  
##Introduction
> This is vim-airline extension of simplily todo implementation
  
##Required
> * [Airline](https://github.com/bling/vim-airline): This is a extension of airline (like powerline, but more fast and KISS)
> * [powerline-font](https://github.com/Lokaltog/powerline-fonts): if you use wild char, you may need install powerline font  

##Configuration
> * If you want to change the todo directory(the default is ~/.vim-airline-todo):
> let g:todo#directory = "your todo task directory"
  
> * If you want to change TODO sign (the default is TODO):
> let g:todo#remind= "your sign here"
  
> * If you want to count the TODO tasks recursively (the default is 0, no subdirectory contains):
> let g:todo#recurse = 0 or 1 here
  
> * If you want to change todo task suffix (the default is '*'):
> let g:todo#suffix = "your todo task suffix here" 
  

## Usage
> Create file in directory `g:todo#directory`, one file one task.  

## Trick
> * keymap  
> If you are using plugin NERDTree, you can set a keymap like ```map <leader>t :NERDTree 'g:todo#directory here'```   
> If you are using other file browse plugin, just take above as a reference  
> Then you can easily browse and edit your task(s)  

> * sync  
> you can use dropbox as a sync tool, just set ```let g:todo#directory``` in a dropbox sync place

## Screenshot
> ![todo](https://raw.github.com/Zuckonit/vim-airline-todo/master/.screenshots/screenshot.png)

## License
> [MIT](https://raw.github.com/Zuckonit/vim-airline-todo/master/LICENSE)

==============================================================================
vim:tw=78:ts=8:ft=help:norl:noet:fen:fdl=0:
