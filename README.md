# latex-custom-te

A set of custom class and style files for use with [LaTeX](https://www.latex-project.org/). They should be installed where your LaTeX distribution checks for class and style files. If you are using macOS this should be in `~/Library/texmf` and you can use this to install them:

```sh
# make directory along LaTeX toolchain
mkdir -p ~/Library/texmf/tex/latex

# install repo
cd ~/Library/texmf/tex/latex
git clone https://github.com/TimothyElder/latex-custom-te/
```

## Notes

What's included?

- The `/custom-beamer` directory includes beamer themes to use when making slides with LaTeX. One (UofC) is themed with the identity guidelines of the University of Chicago.
- `/custom-classes` includes a few LaTeX classes for working with article submissions and for dissertations, at least those written at the University of Chicago, but it could be helpful elsewhere.
- `/templates` has a number of different LaTeX templates that you can start using for your own needs. They are meant to be used directly with LaTeX. A set of LaTeX templates to be used with pandoc can be found in [TimothyElder/pandoc-templates](https://github.com/TimothyElder/pandoc-templates).
- There are several style files originally made by [Kieran Healy](https://github.com/kjhealy), and they are lingering here as they probably are needed somewhere in one of my templates or classes, but I haven't found where yet.