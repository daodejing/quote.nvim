## Teacup Neovim Plugin

A Neovim Plugin Template.

### Installation

1. Install it via your favorite package manager.

```lua
-- lazy.nvim
{
    "clivern/teacup.nvim",
},
```

2. Setup the plugin in your `init.lua` and provide the `opts` as below

```lua
require("teacup").setup({
    msg = "Hey there!",
})
```

### Usage

The plugin provide a command `:Teacup` to print the message

### Contributing

Contributions are welcome! If you have ideas for new features or improvements, feel free to open an issue or submit a pull request.

### License

This plugin is licensed under the MIT License.

