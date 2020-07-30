Check out the `example-class`!

But the basic idea is each topic for the class goes in a file in `$class/topics`.
These can be written in either LaTeX or Markdown.
The type is differentiated by the file suffix.

If you write a file as LaTeX, in the base document add it as `\input{topics/$topic-name}` and `\input{md-topics/$topic-name}` for Markdown files.
Markdown will be compiled to LaTeX by Pandoc as part of `render_slides.sh`.

Images should be saved in each class's `images/` folder.^[Note that .svg's cannot be used in Markdown. We recommend converting to pdf.]

To add an image in LaTeX:
```latex
\includegraphics[width=0.5\linewidth]{./images/hkn-bear.pdf}
````

To add an image in Markdown:
```md
![word](./images/hkn-bear.pdf)
```

Circuit diagrams can be done in either `tikz-circtiut`, `circuitikz`, or as images.
