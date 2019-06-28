# Japorized's Personal Study Notes

You can also see most of the files on
[https:/tex.japorized.ink](https:/tex.japorized.ink).

Page uses [tufte-css](https://github.com/edwardtufte/tufte-css) for styling

---

Most of the contents are compiled from my lecture notes and recommended reading
materials, or perhaps from my personal studies and further reading. Citations
will be provided wherever necessary.

If you wish to get a copy of these documents, please retain a copy of the
license.

My main editor is neovim. I have a setup for Sublime Text as well, but I have
not updated it in a long while.

---

### Setups

* Class notes
  * Uses [`tufte-latex`](https://github.com/Tufte-LaTeX/tufte-latex) with some
  modifications to how chapter, section and subsection is presented
  * Personalized theorem (& co.) environments through `ntheorem` and `xcolor`
  * Uses `pdflatex`
* Special setup - Japanese notes
  * Mostly the same setup as the above, except that it uses LuaLaTeX for the
  sake of staying sane while dealing with unicode
* Assignments
  * Standard white background, black foreground
  * Uses `pdflatex`

---

### LaTeX Template

My commonly used LaTeX templates are saved in `setup-nvim/`.

**For (n)vim users,** I am using my own [utterly naive plugin](https://gitlab.com/japorized/vim-template) that simply grabs my templates and writes them into my buffer, just so that I don't have to perform a `cp` command every time I create a new document.

**For Sublime Text users,** copy the appropriate contents from `setup-subl` and create a new snippet, so that you may fetch the template via `Shift + Ctrl/Cmd + p` (on macOS). Be sure to have the following in your snippet under scopes.

```
<scope>text.tex.latex</scope>
```

**Preamble**

Use the `bootstrap` shell script to symlink the `.sty` files and preambles sitting in `tex-common/` to your `TEXMFHOME` path, as determined by `kpsewhich --var-value=TEXMFHOME`. Sorry Windows users, `bootstrap` only works for UNIX-like systems using the POSIX standard.

---

### Snippets

My TeX snippet for nvim is in the `tex.snippet` and `texmath.snippet` file, and I use [UltiSnip](https://github.com/SirVer/ultisnips) for completion. My autocompletion plugin in [coc](https://github.com/neoclide/coc.nvim). coc.nvim requires a non-trivial installation, but I recommend it for the speed because it deals with completion in an asynchronous manner.

My Sublime Text snippet is provided in the file `setup-subl/tex.sublime-completions`. Put it in your `$SUBLIME_PATH/Packages/User/` folder to get it working (a bootstrapping shell script is available in the setup folder).

---

### Other Notes

* `gnuplot` and `minted` requires `--shell-escape` in the compiler.
  * If you use `latexmk`, then add to a local `latexmkrc` located in the base
    directory of the TeX project.
    ```
    $pdflatex = 'pdflatex  %O  --shell-escape %S';
    ```
    Replace `pdf` with `lua` if you use `lualatex`.
* I am looking at [`llmk`](https://github.com/wtsnjp/llmk), hoping that it'll
  serve as a more well-documented and simpler LaTeX make program.
