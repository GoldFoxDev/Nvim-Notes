# NVIM Notes (NN)

Author: Lucas Pichette

## Frontmatter

### Alternatives

- NEORG: https://github.com/nvim-neorg/neorg

### Complimentary NVIM Packages

- Markview: https://github.com/OXY2DEV/markview.nvim

## Using NVIM Notes (NN)

Note: You don't have to copy each command and paste it individually, you can copy the entire block and paste it into your terminal emulator and it will run all of the necessary commands.

```bash
mkdir -p $HOME/.config/nvim_notes;
cd $HOME/.config/nvim_notes;
git clone git@github.com:lcpichette/Nvim-Notes.git .;
rm -rf .git;
chmod +x nn;
export PATH="$PATH:$HOME/.config/nvim_notes/";
```

Modify config.toml as desired, where `NOTE_BANK` is the root location where your notes will be saved. Defaults to $HOME/nn

From here it's initialized, and you can start using it.

### Journals

`nn j` creates a new journal entry based off the `template.journal.md`, which you can modify to send those files by default to wherever you prefer, and modify the content to whatever you want by default.

### Other Templates

Journal is the only unique template, the rest you can create and customize or paste in as you desire. I have a `test` template so that you can immediately play around with it.

`nn t test some-filename` will create a file `some-filename.md` with the `~/.config/nvim_notes/templates/template.test.md` template.

`nn t test` will create a file `test.md` based on the `template.test.md` template in the inbox (default location, specifying location in the meta will place it in the specified location after creation).

Here we can make at least 3 observations:

1. 3rd param <filename> is optional and will default to template name
2. creating a new template is as easy as creating a new `template.template-name.md` file in `~/.config/nvim_notes/templates`.
3. File creating generally defaults to inbox, but if you add metadata with a desired path it will move the file to the correct location upon save.

Example note `some-note.md` with metadata:

```markdown
#something/amazing
;;;
... Your note! ...
```

Above we can see that the metadata for this file is just the desired location. This will be at: NOTE_BANK (likely ~/nn) / something / amazing. (e.g. `~/nn/something/amazing/some-note.md`).

## Why?

With established and popular tools like Obsidian, and bleeding-edge software like Kortex trying to leave a mark, why take a step backwards? Or rather, a few steps backwards?

1. You can't use Obsidian, much less Kortex, in as quick and hassle-free of a way with nvim as you can with NN.
2. NN is built for (n)vim users with the idea in mind that you might just want to jot a note somewhere random, fill it with content, and deal with it later!

There are also other note editing tools in the terminal, but I found using them to be too constraining or undesirable. NEORG is an incredible project that everyone should at least check out if they're interested in taking notes in their terminal. However, I prefer quickly taking markdown notes and I saw opportunity to make note taking a snappier process that focuses more on quick notes that you can tag and organize later.

NN's core functionalities:

- [x] Creating notes in anywhere and storing them in a centralized location
- [x] Creating notes based on templates
- [x] Automatically moving notes for organizing your thoughts
- [ ] Tagging notes
- [ ] Notification of current notes that need to be organized and way of disabling this check on a per-file basis
- [ ] Quickly edit templates and config files relating to nn using nn (as opposed to remembering nvim_notes config location and nviming specific files)

Other functionalities that are important to us that are gained from NVIM:

- Fuzzy searching for files
- Window panes (Multiplexer or vim panes)

## What?

What exactly does NN do? It allows you to jot down ideas and forget about them until you're ready to organize these ideas later.

By creating a markdown file anywhere, dumping your idea into it, then saving the file and running `nn`, NVIM Notes will take this .md and shove it in your inbox for you to sort later.

Sorting is made easy, and you don't have to wait for it to go into your inbox to sort it. Simply append the following to the top of your markdown file:

```markdown
#folder/sub-folder
;;;
Your amazing idea
```

This will take your .md file and put it in `~/nn/folder/sub-folder` (or wherever you have your NOTE_BANK specified to save files to in the `config.toml`).

## Where?

Where to go from here? First of all, this documentation needs a lot of love... But also, features!

- Templates
- Iron-out edge-cases and bugs
- Utility methods like creating/renaming a file to include a timestamp

## How?

How is it intended to be used? `fzf`, and nvim w/ telescope.

If you're working on a book I'd recommend Harpoon with each chapter being a branch in a private GitHub repository.

If you're a software engineering, I'd definitely recommend Harpoon religiously.

Telescope and fzf should make finding notes incredibly easy.

`echo "Create youtube video demo-ing NN" >> note-youtube-idea.md; nn` is a great use-case example.

Another great use-case would be to-dos like `echo "#work/todo\n;;;\n" . "Create demo for NN" >> nn-yt-demo.md; nn`. It would send this to-do md to my NOTE_BANK/work/todo folder where I could then nvim in and change it from #work/todo to #work/done and run nn again.

If you wanted to print all of the .md files in your todo's folder for example, you could run:

```bash
find ~/nn/work/todo -name "*.md" -not -path "*/.git/*" -print0 | while IFS= read -r -d '' file; do
  echo "=== $(basename "$file") ==="
  cat "$file"
  echo "================="
  echo
done
```

Where your todos are in ~/nn/work/todo (which also assumes your NOTE_BANK is set accordingly).

A lot of these kinds of miscellaneous scripts that are useful but not critical to nn's success will likely be thrown in as utility methods along the way.
