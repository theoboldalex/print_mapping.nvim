print("Hello from my first plugin!")
vim.keymap.set("n", "greet", ":echo 'Hi there ' . $USER<CR>")
