local wk = require("which-key")

wk.setup {
    plugins = {
        marks = false,
        registers = false,
    },
}

-- Auto Complete
wk.register({
    ["<C-n>"] = { desc = "Select next item" },
    ["<C-p>"] = { desc = "Select previous item" },
    ["<C-y>"] = { desc = "Select item" },
    ["<C-Space>"] = { desc = "Autocomplete dropdown" },
}, { mode = "n" })

-- Quick Fix Code Actions
wk.register({
    ["<leader>v"] = { group = "Quick Fix Actions" },
    ["<leader>vws"] = { desc = "Search for a symbol in your workspace" },
    ["<leader>vd"] = { desc = "Display diagnostic box for error or warn" },
    ["<leader>vca"] = { desc = "Display suggested code action" },
    ["<leader>vrr"] = { desc = "Display all such references" },
    ["<leader>vrn"] = { desc = "Rename all such references" },
}, { mode = "n" })

-- Code Help Actions
wk.register({
    ["gd"] = { desc = "Go to definition" },
    ["K"] = { desc = "Hover" },
    ["[d"] = { desc = "Diagnose next error or warn" },
    ["]d"] = { desc = "Diagnose prev error or warn" },
    ["<C-h>"] = { desc = "Signature help" },
}, { mode = "n" })

-- Advanced Undo
wk.register({
    ["<leader>u"] = { desc = "Toggle undo tree" },
}, { mode = "n" })

-- Harpoon
wk.register({
    ["<leader>h"] = { group = "Harpoon Actions" },
    ["<leader>ha"] = { desc = "Add file to harpoon" },
    ["<leader>ht"] = { desc = "Toggle to harpoon menu" },
    ["<leader>h1"] = { desc = "Navigate to harpoon file 1" },
    ["<leader>h2"] = { desc = "Navigate to harpoon file 2" },
    ["<leader>h3"] = { desc = "Navigate to harpoon file 3" },
    ["<leader>h4"] = { desc = "Navigate to harpoon file 4" },
}, { mode = "n" })

-- Git
wk.register({
    ["<leader>g"] = { group = "Git Actions" },
    ["<leader>gs"] = { desc = "Search in git files" },
}, { mode = "n" })

-- Telescope
wk.register({
    ["<leader>p"] = { group = "Project search Actions" },
    ["<leader>pf"] = { desc = "Find file by name" },
    ["<leader>pg"] = { desc = "Find git file by name" },
    ["<leader>ps"] = { desc = "Find files with word" },
    ["<leader>pv"] = { desc = "Open file explorer" },
}, { mode = "n" })

-- Custom
wk.register({
    ["<leader>i"] = { desc = "Paste image from clipboard" },
}, { mode = "n" })

