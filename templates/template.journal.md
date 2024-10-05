# Questions

1.

# Ephemeral Notes

1.

# Frogs

- [ ]

# Pond

- [ ]

# Tadpoles

- [ ]

# Useful Commands

- `tlrc cmd`: e.g. `tlrc grep` basically `man` but lists most-common flags first and is more readable

# Vim

# Helpful Vim Keybinds

## Basic Navigation

- `gg`: Go to the top of the file
- `G`: Go to the bottom of the file
- `0`: Go to the beginning of the line
- `$`: Go to the end of the line
- `{`: Go up a paragraph
- `}`: Go down a paragraph
- `%`: Jump to matching parenthesis or bracket

## Editing

- `I`: Insert mode at the beginning of the line
- `A`: Insert mode at the end of the line
- `O`: Insert a new line above the current line
- `x`: Delete the character under the cursor
- `d$`: Delete from the cursor to the end of the line
- `diw`: Delete the word under the cursor
- `Ctrl + r`: Redo the last undone change
- `r<char>`: Replace the character under the cursor with `<char>`
- `ciw`: Change (delete and enter insert mode) the word under the cursor

## Copy and Paste

- `yw`: Yank from the cursor to the start of the next word
- `y$`: Yank from the cursor to the end of the line
- `p`: Paste after the cursor
- `P`: Paste before the cursor
- `v`: Enter visual mode to select text
- `V`: Enter visual line mode (select whole lines)
- `Ctrl + v`: Enter visual block mode (column selection)

## Search and Replace

- `/pattern`: Search forward for `pattern`
- `?pattern`: Search backward for `pattern`
- `n`: Move to the next match in a search
- `N`: Move to the previous match in a search
- `:%s/foo/bar/g`: Replace all occurrences of `foo` with `bar` in the file

## Saving and Exiting

- `:x`: Save and quit (same as `:wq`)

## Splits and Windows

- `:split`: Horizontal split
- `:vsplit`: Vertical split
- `Ctrl + w + h`: Move to the split to the left
- `Ctrl + w + l`: Move to the split to the right
- `Ctrl + w + j`: Move to the split below
- `Ctrl + w + k`: Move to the split above
- `Ctrl + w + q`: Close the current split

## Miscellaneous

- `.`: Repeat the last command
- `Ctrl + o`: Jump back to the previous location
- `Ctrl + i`: Jump forward to the next location
- `:!command`: Run an external command (e.g., `:!ls`)
