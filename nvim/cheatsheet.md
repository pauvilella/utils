# Vim Cheatsheet

# Basic commands
`:help` : Get help
`:term` : Open terminal (`exit + Enter` to exit the termial)
`:Ex` : Explore mode (see the files)
`:w` : write
`:q` : quit
`:q!` : force quite
`:e filename` : edit file
`:r filename` : read file (when I'm in a file and I do this command, it will paste the contents of the readed file to my current file)
`:r !command` : execute command and print the output of the command to my current buffer (e.g.: `:r !ls -la` will paste the outputs of the ls command)
`:set number` : add line numbers (or `:set nu`)

# Explorator mode
`%` : Create file

# Movement
`j` : down
`k` : up
`h` : left
`l` : right
`$` : end of line
`0` : beginning of line
`Shift+g` : end of file
`gg` : beginning of file

# Undo
`u` : undo the last change (in Normal mode)

# Insert (from normal mode)
`i` : insert before cursor
`Shift+i` : insert at the beginning of the line
`a` : insert after cursor
`Shift+a` : insert at the end of the line
`s` : will erase the character of the cursos and put insert mode (substitute)
`o` : insert in line below
`Shift+o` : insert in line above

# Visual mode (from normal mode)
`v` : starts selecting (then I can move the cursor and it will select where I move)
`Shift+v` : selects whole line

# Visual block mode (from normal mode)
`Ctrl+v` : Block select

## Things to do while having text selected
`d` : delete
`c` : change
`s` : substitute
`y` : yank (copy)

# Whole sentence actions
`yy` : copy sentence
`dd` : delete sentence
`cc` : change sentence

# Paste
`p` : paste below (in normal mode)
`Shift+p` : paste above (in normal mode)
`Cmd+v` : paste from mac clipboard (in insert mode)

# Search & Replace (from normal mode)
