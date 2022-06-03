Files in this folder are automatically seen by Nvim. Just Add your local plugin
to nvim via your plugin manager in your init.lua.

If you want to pull in external files, create a /lua directory and reuire the
relevant files from there.

A commonly seen pattern for writing plugins in neovim is like follows...

```
local M = {}

M.setup = function()
  print("Hello, I have been setup!")  
end

return M
```

if we then run `lua P(require"<plugin-name>)` we will print the module table
which will show that `setup` holds a function value. We can add props to the table
with requires too (See the lua section of my init.vim where we config the setup function
on telscope.nvim).
