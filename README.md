# Japorized's Personal Study Notes

**Note: The style that I'm using, tufte-latex, is somewhat broken since I upgraded to texlive2018. While most of the most important stuff are intact and safe, certain headers will look broken.**

You can also see most of the files on [https://japorized.github.io/TeX_notes]( https://japorized.github.io/TeX_notes )

Page uses [tufte-css](https://github.com/edwardtufte/tufte-css) for styling

---
Most of the content are compiled from my (scavenged) lecture notes and recommended reading materials, or perhaps from my personal studies and further reading. Citations will be provided wherever necessary.

If you wish to get a copy of these documents, please take them with utmost discreet.

My main editor is Sublime Text, but I have a setup for nvim as well.

---
### Setups

* Class notes
  * Uses [`tufte-latex`](https://github.com/Tufte-LaTeX/tufte-latex) with some modifications to how chapter, section and subsection is presented
  * Personalized theorem (& co.) environments through `ntheorem` and `xcolor`
  * Color is based on [base16](https://github.com/chriskempson/base16)-eighties; mainly uses dark color as background and light color as foreground (it's better for my eyes and for long reading times)
  * White background with black text is compiled after a note is considered to be complete
  * Uses `pdflatex`
* Special setup - Japanese notes
  * Mostly the same setup as the above, except that it uses LuaLaTeX for the sake of staying sane while dealing with unicode
* Assignments
  * Standard white background, black foreground
  * Uses tcolorbox to highlight solutions
  * Uses `pdflatex`

---
### Known Issues

* `tufte-latex` is likely broken in texlive2018, and there may be no hope of fixing it since it looks like the package is no longer maintained (last commit was in Jan 2016). I will, however, continue to use it, for there is nothing that can replace the sidenote and marginnote that it provides. I am using `fancyhdr` to replace the default header in `tufte-latex` (which I believe is what they used as well).

---
### Typos? Erroneous proof?

Please feel free to either contact me or create an issue.

---
### LaTeX Template

The LaTeX Template of my notes is saved as `tex_default.sh`.

**For nvim users,** if you wish to have this as the default TeX template for all of your TeX files, make sure that your VIm has autocmd. You can check so by executing `:echo has("autocmd")` while being in a VIm session. If the command returns 1, you're good to go. Copy the .sh file into your `.vim/templates` folder, and add the following to your vimrc

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

**Preamble**

Find out where the `texmf` directory should go on your system (different across Linux, macOS, and Windows). Put the preamble documents in `$DIR_TO_TEXMF/texmf/latex/local/`, and use `kpsewhich $PREAMBLE_FILE` to see if your texlive installation can detect the file.

---
### Snippets

My TeX snippet for VIm is in the `tex.snippet` and `texmath.snippet` file, and I use [UltiSnip](https://github.com/SirVer/ultisnips) for completion. My autocompletion plugin in [deoplete](https://github.com/Shougo/deoplete.nvim).

My Sublime Text snippet is provided in the file `tex.sublime-completions`. Put it in your `$SUBLIME_PATH/Packages/User/` folder to get it working.

---

## Other info

### Information about PMATH351F17 and PMATH347F17

These notes will stop at Lecture 11, since I have to drop these courses due to personal reasons. I will continue to accept typo amendments wherever necessary. Please feel free to copy these notes for yourselves and continue editing from there.
