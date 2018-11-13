# Design Notes


## Screen Model on the Web

Adapting the console-minded Z-machine screen model to the web is a bit tricky;
we analyze it here.

### Objectives

- Use proportional, human-friendly fonts unless some text requires fixed-pitch.
- Support the fancy output: fonts and colours, true colour, Unicode.
- Infinite scrollback.
- Split window support 
### Basics

- Text is divided into paragraphs, whenever the game outputs a hard newline.
- Therefore there's a currently open paragraph, which is ended (and a new one
  started) when we encounter a newline.
- Styling (colour, font) comes and goes within paragraphs, or even within words.
  It's captured using `<span>` tags, which are also started at the beginning of
  each paragraph.

### Screen Width and Cursor Movement

NB: The cursor can only be moved when the upper window is selected; it has no
effect otherwise.

The screen height in lines is always reported as 255, meaning infinite.

The size in "units" is given in pixels, with the font size in units set
accordingly.

The width in columns is given as `width_in_units / font_width_in_units`.

Generally, games don't care about text rendering in the lower window, but
carefully render the text in the top window to show the score and so on.

For now, I'm just going to let the top window be a `<pre>` tag, and honour the
fixed sizes. Later, I'd like to be a little more clever and handle eg. left,
center and right blocks with flexible spacing, use `flex-box`.

Moving the cursor in the upper window works as expected. Moving it in the bottom
window is not really supported; every move just puts the cursor at the bottom.

Erasing the "current line" empties the current paragraph and makes a new one.

### Interaction with re-frame

The re-frame app is driving, not the Z-machine. Since accepting user input (in
`read`, `read-char`, etc.) requires asynchrony, the architecture is that the
re-frame app makes the Z-machine run opcodes one after another until it requires
input.

In order to keep the text printing and the UI responsive, we typically run 100
opcodes, let re-frame run, and continue. If we reach an opcode that requests
input, we dispatch an event and stop executing.

`read` and `read-char` include some state for resuming execution after the input
is received. After we get a line of input, the Z-machine is resumed with the
input text.

The Z-machine is essentially in one of four states at any given time:
- ready to run opcodes
- waiting for a line of input
- waiting for a single keypress
- quit

In the ready state, re-frame will make it run a number of opcodes.


The Z-machine also dispatches re-frame events that drive the output system:
- Print text (no newlines).
- Newline
- Change font or colour.



### More Screen Model Notes

- 7.2 discusses buffering to enable word wrap. The web is doing the necessary
  word-wrapping and so there's no need to buffer further.
- Style changes (fonts, colours both foreground and background) are represented
  as items in the text stream. They're handled by the engine by closing a style
  tag and opening another.
- Output stream 1 is the main output; it is supported.
- Output stream 2 is the "transcript"; it is ignored.
- Output stream 3 is the nestable dynamic memory writing. It overrides all other
  output.
- Output stream 4 is a script, which is also ignored.

### Fonts

The `set_font` opcode has four values:

1. Normal, proportional font.
2. A picture font, ill-specified and not supported
3. Chracter graphics, better specified but still not supported
4. Fixed-pitch

Additionally, setting bit 1 of Flags 2 in the header, or setting the text style
to fixed pitch, turns on fixed pitch.

Changing fonts anywhere, including mid-word, is acceptable.

### Colour

&sect;8.3.1 gives the colour table. True colour is supported, and only the text
is coloured. New blank lines and the background are permanently white.


### Status Line

In versions 1 to 3 the status line is the interpreter's responsibility; that's
TODO for now.




