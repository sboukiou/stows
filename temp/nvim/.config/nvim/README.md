# Neovim Config

## Usage:
`
    // clone the repository into the appropriate directory
    git clone git@github.com:sboukiou/nvim.git ~/.config/nvim

    // Run Nvim
    nvim
`

## Structure:
```
 [[  The Directory is structured as bellow: ]]
    .
├── init.lua   # Init file where all modules are included/required
├── lazy-lock.json
├── lua                         # Actual config sources.
│   ├── mappings.lua            # KeyBindings file
│   ├── options.lua             # Options and builtin-configs opts
│   ├── plugins                 # Plugins , Each file contains a plugin/plugins for a certain functionality
│   │   ├── appearence.lua
│   │   ├── live-server.lua
│   │   ├── MarkDown.lua
│   │   ├── mason.lua
│   │   ├── norme.lua
│   │   └── telescope.lua
│   ├── pmanage.lua             # Plugin manager ( Lazy ) to install and manage packages
│   └── setups.lua              # Builtin Neovim configs ( Lsp ... )
└── NEOVIM.md                   # The very file you're reading

3 directories, 13 files
```
