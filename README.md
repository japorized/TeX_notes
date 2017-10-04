# Japorized's Personal Study Notes
---
Most of the content are compiled from my (scavenged) lecture notes and recommended reading materials, or perhaps from my personal studies and further reading. Citations will be provided wherever necessary.

If you wish to get a copy of these documents, please take them with utmost discreet.

My main editor is Sublime Text, but I have a setup for VIm as well.

---
### Information about PMATH351F17 and PMATH347F17

These notes will stop at Lecture 11, since I have to drop these courses due to personal reasons. I will continue to accept typo amendments wherever necessary. Please feel free to copy these notes for yourselves and continue editing from there.

---
### Typos?

Please feel free to either contact me or send a pull request for rectifying typos.

For users familiar with git, you do not have to clone the entire repo just to make that correction, since you may use the editor on GitHub to make amends.

---
### LaTeX Template

The LaTeX Template of my notes is saved as tex\_default.sh.

**For VIm users,** if you wish to have this as the default TeX template for all of your TeX files, make sure that your VIm has autocmd. You can check so by executing `:echo has("autocmd")` while being in a VIm session. If the command returns 1, you're good to go. Copy the .sh file into your `.vim/templates` folder, and add the following to your vimrc

```
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.tex 0r ~/.vim/templates/tex_default.sh
  augroup END
endif
```

**For Sublime Text users,** copy the contents and create a new snippet, so that you may fetch the template via `Shift + Cmd + p` (on macOS). Be sure to have the following in your snippet under scopes.

```
<scope>text.tex.latex</scope>
```

---
### Snippets

My TeX snippet for VIm is in the `tex.snippet` file, and I use [vim-snipmate](https://vimawesome.com/plugin/vim-snipmate-mine) to tab-complete as I type.

My Sublime Text snippet is provided in the file `tex.sublime-completions`. Put it in your `SUBLIME_PATH/Packages/User/` folder to get it working.
