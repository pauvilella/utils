# Vim Cheatsheet

# Basic commands
`:help` : Get help<br>
`:term` : Open terminal (`exit + Enter` to exit the termial)<br>
`:Ex` : Explore mode (see the files)<br>
`:w` : write<br>
`:q` : quit<br>
`:q!` : force quite<br>
`:e filename` : edit file<br>
`:r filename` : read file (when I'm in a file and I do this command, it will paste the contents of the readed file to my current file)<br>
`:r !command` : execute command and print the output of the command to my current buffer (e.g.: `:r !ls -la` will paste the outputs of the ls command)<br>
`:set number` : add line numbers (or `:set nu`)<br>
`.` : repeat last command executed

# Explorator mode
`%` : Create file<br>

# Movement
`j` : down<br>
`k` : up<br>
`h` : left<br>
`l` : right<br>
`$` : end of line<br>
`0` : beginning of line<br>
`Shift+g` : end of file<br>
`gg` : beginning of file<br>

# Undo
`u` : undo the last change (in Normal mode)<br>

# Insert (from normal mode)
`i` : insert before cursor<br>
`Shift+i` : insert at the beginning of the line<br>
`a` : insert after cursor<br>
`Shift+a` : insert at the end of the line<br>
`s` : will erase the character of the cursor and put insert mode (substitute)<br>
`o` : insert in line below<br>
`Shift+o` : insert in line above<br>

# Visual mode (from normal mode)
`v` : starts selecting (then I can move the cursor and it will select where I move)<br>
`Shift+v` : selects whole line<br>

# Visual block mode (from normal mode)
`Ctrl+v` : Block select<br>

## Things to do while having text selected
`d` : delete<br>
`c` : change<br>
`s` : substitute<br>
`y` : yank (copy)<br>

# Whole sentence actions
`yy` : copy sentence<br>
`dd` : delete sentence<br>
`cc` : change sentence<br>

# Paste
`p` : paste below (in normal mode)<br>
`Shift+p` : paste above (in normal mode)<br>
`Cmd+v` : paste from mac clipboard (in insert mode)<br>

# Search & Replace (from normal mode)
`/someword` : search some word (start looking from the cursor onwards). Press enter to go the the first occurance<br>
`n` : go to the next occurance (once search has been done)<br>
`Shift+n` : go to the previous occurance (once search has been done)<br>
`?someword` : search from the cursor backwards<br>
`:nohl` : no highlight (skip search and highlighted words)<br>
`*` : search the whole word the cursor is currenlty on (onwards)<br>
`g*` : search the word (raw search) the cursor is currenlty on (onwards)<br>
`#` : search the whole word the cursor is currenlty on (backwards)<br>
`g#` : search the word (raw search) the cursor is currenlty on (backwards)<br>
`:s/someword/otherword/[flags]` : substitute (by default, context is the line of the cursor, bue we can select more lines and then do this command)
* Flags:
  * `g` : global (all accurances in the context)
  * `c` : confirm (automatically)
  * `i` : case insensitive
  * `I` : case sensitive

`:%s/someword/otherword/[flags]` : same thing but considering all document as the context (all the buffer)<br>
> Note: substitue and search also work with regex, match groups, etc.

# Text objects (actions upon text)
When I have the cursor on a certain word:<br>
`cw` : change word (from the cursor to the end of word)<br>
`caw` : change a word (whole word including spaces before and after it)<br>
`ciw` : change inner word (change only the whole word, not spaces)<br>
`cas` : change a sentence<br>
`cis` : change inner sentence<br>
> Note: all of this works with other modifiers: `d` (delete), `s` (substitute), `v` (select), `y` (copy).<br>
> Note: all the object we can act on: `w` (word), `s` (sentence), `p` (paragraph), `t` (tag, like html/xml tag) and a **symbol**, like: `(`, `{`, `<`, `"`,... e.g.: `ci(` is "change inside parenthesis"<br>
`df/` : delete from cursor until you find / (also works with other verbs), it includes the searched character (/ in this case): "delete find /"<br>
`dt/` : delete from cursor until you find / (same without including /): "delete til /"<br>

# Windows & Buffers
`:buffers` : show buffers<br>
`:b1` : go to buffer 1<br>
`:split` : horizontal split (windows). Also: `Ctrl+w + s`<br>
`:vsplit` : vertical split (windows). Also: `Ctrl+w + v`<br>
`Ctrl+w + j` : move to window below<br>
`Ctrl+w + k` : move to window above<br>
`Ctrl+w + h` : move to window left<br>
`Ctrl+w + l` : move to window right<br>
`Ctrl+w + =` : equally size all windows<br>
`Ctrl+w + c` : close window<br>
`:bd` : delete buffer<br>
`:bd!` : force delete buffer<br>

