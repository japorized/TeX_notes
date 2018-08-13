Add the following to your `~/.vimrc` to have vim automatically use `tex_default.sh` as the default template for new tex files.

```vimscript
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.tex 0r ~/.vim/templates/tex_default.sh
  augroup END
endif
```
