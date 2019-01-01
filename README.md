# Japorized's Personal Study Notes

You can also see most of the files on [https://japorized.gitlab.io/TeX_notes]( https://japorized.gitlab.io/TeX_notes )

Page uses [tufte-css](https://github.com/edwardtufte/tufte-css) for styling

---
Most of the content are compiled from my (scavenged) lecture notes and recommended reading materials, or perhaps from my personal studies and further reading. Citations will be provided wherever necessary.

If you wish to get a copy of these documents, please take them with utmost discreet.

My main editor is nvim, but I have a setup for Sublime Text as well.

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
### LaTeX Template

My commonly used LaTeX templates are saved in `setup-nvim/`.

**For (n)vim users,** if you wish to have this as the default TeX template for all of your TeX files, make sure that your VIm has autocmd. You can check so by executing `:echo has("autocmd")` while being in a VIm session. If the command returns 1, you're good to go. Copy the .sh file into your `.vim/templates` folder, and add the following to your vimrc

```
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.tex 0r ~/.vim/templates/tex_default.sh
  augroup END
endif
```

Otherwise, check out [`vim-template`](https://gitlab.com/japorized/vim-template).

**For Sublime Text users,** copy the appropriate contents from `setup-subl` and create a new snippet, so that you may fetch the template via `Shift + Cmd + p` (on macOS). Be sure to have the following in your snippet under scopes.

```
<scope>text.tex.latex</scope>
```

**Preamble**

Use the `bootstrap` shell script to symlink the `.sty` files and preambles sitting in `tex-common/` to your `TEXMFHOME` path, as determined by `kpsewhich --var-value=TEXMFHOME`. Sorry Windows users, `bootstrap` only works for UNIX-like systems using the POSIX standard.

---
### Snippets

My TeX snippet for nvim is in the `tex.snippet` and `texmath.snippet` file, and I use [UltiSnip](https://github.com/SirVer/ultisnips) for completion. My autocompletion plugin in [deoplete](https://github.com/Shougo/deoplete.nvim).

My Sublime Text snippet is provided in the file `setup-subl/tex.sublime-completions`. Put it in your `$SUBLIME_PATH/Packages/User/` folder to get it working (a bootstrapping shell script is available in the setup folder).

---

## Other info

### Information about PMATH351F17 and PMATH347F17

These notes will stop at Lecture 11, since I have to drop these courses due to personal reasons. For PMATH347, I have retaken the course and have a completed set of notes now. See PMATH347S18. I will be taking PMATH351 in F18.
