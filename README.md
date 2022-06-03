# NVim PrintMap - print your key mappings

## My First Foray into Plugin Develeopment for Neovim

This is a test repo for setup of a simple Nvim plugin. Likely to be more notes and readmes
than any meaningful code so I can reference back to this in future.

The plugin is a simple mapping printer which can be called from NVim with 

```
:Printmap <mode> <mapping>
```

For example if we want to see what is mapped to <leader>st in normal mode (where leader is space)
we would call... (spaces are escaped with backslash as you would expect).

```
:Printmap n \ st
```

See [Teej and Bash](https://youtu.be/n4Lp4cV8YR0?t=2204) show setup for gloabl
vim internal debugging functions defined in 
[Teej's nvim config](https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/lua/tj/globals.lua).
