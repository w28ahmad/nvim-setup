require("theprimeagen.remap")
require("theprimeagen.set")

-- Load the hugo_commands module
local hugo_commands = require("theprimeagen.hugoImagePaste")

-- Create the custom command
vim.api.nvim_create_user_command("InsertImage", function()
    hugo_commands.insert_image()
end, {})

-- Create a shortcut key using <leader>i
vim.api.nvim_set_keymap('n', '<leader>i', ':InsertImage<CR>', {noremap = true, silent = true})
