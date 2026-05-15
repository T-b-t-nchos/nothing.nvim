<div align="center">
    <h1>nothing.nvim</h1>
    <sub>Just one color. Nothing else. (Joke.)</sub>
</div>

[Japanese is here.](./README.ja.md)

## Overview
nothing.nvim is a Neovim plugin that nothing colors your code.  
<sub>This plugin is joke and is not intended to be used in any way.</sub>

## Features
- A super simple colorscheme.
- Dark mode and light mode are supported.
- Supports all languages.
- Supports TreeSitter.
- Get enlightenment.
- Seeing the invisible.

## Screenshots
![nothing.nvim/dark](./assets/screenshots/dark.png)
![nothing.nvim/light](./assets/screenshots/light.png)

## Installation
### Lazy.nvim
```lua
{
    "T-b-t-Nchos/nothing.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nothing").setup()
    end
}
```

## Configuration
```lua
require("nothing").setup({
    mode = "dark", -- "dark"/"light"

    -- Add custom highlights
    -- You can use the colors and options in the function.
    -- Also, you can use the simpler table if you don't need the colors and options.
    custom_highlights = function(c, opts)
        return {
        }
    end,
})
```

## Other Info
- This plugin is a joke.
- This plugin is not intended to be used in any way.
- If you found a "something", please let me know.
- I'll make vim version if someone asks.

## License
MIT License
