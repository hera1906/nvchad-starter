# NvChad

Website *[Github](https://github.com/NvChad)*, *[NvChad](https://NvChad.com)*

## Requirements

* Neovim 0.9.5 or later.
* Nerd Fonts (see below)
* Ripgrep

# Custom mappings for nvim


## Rust

This is taken from the youtube video: "Turn VIM into a full featured IDE with only one command" by "Dreams of code" 
<https://www.youtube.com/watch?v=Mtgo-nP_r8Y&ab_channel=DreamsofCode>


## Python

This is taken from the youtube video "The perfect Neovim setup for Python" by "Dreams of Code"
<https://www.youtube.com/results?search_query=the+perfect+neovim+setup+for+python>

## C++

This is taken from the youtube video "The perfect Neovim setup for C++" by "Dreams of Code"
<https://www.youtube.com/watch?v=lsFoZIg-oDs>

## Github Copilot
This is taken from https://www.reddit.com/r/neovim/comments/12vcybk/how_to_get_copilot_to_work_on_nvchad/
### Requirements 

sudo apt install python3-venv


### Known problems

* pyright crashes with some js error (seen in the log file)



# Install

## Fonts
Install font from <www.nerdfonts.com>: *JetBrains Mono NL*. 
Make sure the nerd font you set doesn't end with "Mono" to prevent small icons.
Example: *JetBrainsMono Nerd Font* and not _JetBrainsMono Nerd Font Mono_.

Copy the files to .local/share/fonts.

## Remove old nvim configuration:
```
    rm ~/.local/share/nvim
    mv ~/.config/nvim ~/.config/nvim.bak
```

## Clone the fork of the NvChad repo:
```
    git clone git@github.com:hera1906/nvchad-starter ~/.config/nvim -b helge/nvim1
```
In nvim run the following command:
```
    :MasonInstallAll
```

## Choose theme:
    <leader> t h     choose theme (catppucini)

## C++ formatting:
Choose formatting by adding .clang-format to the code directory or any of its parent directories:
```
~/.local/share/nvim/mason/bin/clang-format --style Microsoft --dump-config > .clang-format
```
(other styles: *LLVM*, *Google*, *Chromium*, *Mozilla*, *WebKit*, *Microsoft*, *GNU*)

## Updating
To update NvChad run the following command:
```
:MasonUpdate
```

# Key mappings


## treesitter

Website *[Github](https://github.com/nvim-treesitter/nvim-treesitter>)*

    * :TSInstallInfo     : Which syntaxes are installed
    * :TSInstall cpp     : Install syntax
    * :TSInstall cmake   : Install syntax
    * :TSInstall python  : Install syntax


## nvim-tree

Website *[Github](https://github.com/nvim-tree/nvim-tree.lua>)*

    * C-n     : Open/Close
    * g?      : Show help
    * <enter> : Open selected files
    * m       : Mark/unmark selected files
    * a       : Add (create) new file
    * d       : Delete file
    * c       : Copy file
    * p       : Paste file
    * r       : Rename file


## Telescope
Website *[Github](https://github.com/nvim-tree/nvim-tree.lua>)*

    * <leader> f f : Find File
    * <leader> f b : Find Buffer

## NvCheatSheet
    * :NvCheatSheet
    * <leader> c h   : Cheat sheet


## Navigate windows

    * C-h          : Window left
    * C-j          : Window down
    * C-k          : Window up
    * C-l          : Window right
## Windows

    * :sp[lit]     : Horizontal Split
    * C-w s        : Split window
    * :vsp[lit]    : Vertical split
    * C-w v        : Split window Vertically

    * C-w h        : Go to the left window
    * C-h          : Go to the left window
    * C-w j        : Go to the down window
    * C-j          : Go to the down window
    * C-w k        : Go to the up window
    * C-k          : Go to the up window
    * C-w l        : Go to the right window
    * C-l          : Go to the right window

    * C-w +        : Increase height
    * C-w -        : Decrease height
    * C-w >        : Increase width
    * C-w <        : Decrease width
    * C-w _        : Max out the height
    * C-w |        : Max out the width
    * :vertical resize +10
    * :horizontal resize +10

    * C-w =        : Equally high and wide
    * C-w o        : Close all other windows
    * C-w q        : Quit a window 
    * C-w s        : Split window
    * C-w v        : Split window Vertically
    * C-w w        : Switch windows
    * C-w x        : Swap current with next

## Line numbers

    * <leader> n   : Toggle absolute line numbers
    * <leader> r n : Toggle relative line numbers


## Buffers 

    * <tab>        : Next buffer
    * <shift-tab>  : Previous buffer
    * <leader> x   : Close buffer

## Debugging

   * leader db     : Toggle breakpoint
   * leader dB     : Add breakpoint with condition 
   * leader dL     : Add log point
   * leader dr     : Start or continue debugger
   * leader dR     : Run last
   * leader de     : Evaluate variable under curser (repeat to enter popup window)
   * leader dp     : Open REPL
   * leader dt     : Terminate debug session
   * F5            : Start or continue debugger
   * F10           : Step over
   * F11           : Step into
   * F12           : Step out

### Windows
   See ":h dapui.setup()" for configuration options and defaults.
#### Variable scopes (scopes)
   * e: Edit the value of a variable
   * CR: Toggle showing children
   * r: Send variable to REPL
#### Threads and Stack Frames (stacks)
   * o: Jump to a place within a stack Frames
   * t: Toggle displaying subtle Frames
#### Watch Expressions (watches)
   * CR: Toggle showing the children of an Expression 
   * d: Remove the watched Expression  
   * e: Edit an expression or set the value of a child variable
   * r: Send expression to REPL
#### Breakpoints (breakpoints)
   * o: Jump to the location of the breakpoint
   * t: Enable/disable the selected breakpoint

## Terminal

Website *[Github](https://github.com/NvChad/nvterm)*

    * <leader> pt      : Unhide terminal buffers
    * :Telescope terms : Unhide terminal buffers

    * <leader> h       : Open command line shell Horizontally
    * <leader> v       : Open command line shell Vertically

    * C-x              : Enter normal mode
    * C-\ C-n          : Enter normal mode
    * C-\ C-o          : Enter normal mode for one command
    * :q               : Close terminal

## ChatGPT
    * ChatGPT          : Floating window with prompt
    * ChatGPTActAs
    * ChatGPTCompleteCode
    * ChatGPTEditWithInstructions
    * ChatGPTRun 

## Copilot
   * :Copilot         : Floating window with prompt for Github Copilot
   * C-l              : Accept suggestion

