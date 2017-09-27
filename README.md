# Japorized's Personal Study Notes
---
Most of the content are compiled from my (scavenged) lecture notes and recommended reading materials, or perhaps from my personal studies and further reading. Citations will be provided wherever necessary.

If you wish to get a copy of these documents, please take them with utmost discreet.

---
### LaTeX Template

The LaTeX Template of my notes is saved as tex\_default.sh.

For VIm users, if you wish to have this as the default TeX template for all of your TeX files, copy the .sh file into your `.vim` folder, and add the following to your vimrc

```
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.tex 0r ~/.vim/templates/tex_default.sh
  augroup END
endif
```

For Sublime Text users, copy the contents and create a new snippet, so that you may fetch the template via `Shift + Cmd + p` (on macOS). Be sure to have the following in your snippet under scopes.

```
<scope>text.tex.latex</scope>
```
