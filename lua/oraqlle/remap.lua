-- Leader key for custom commands/remaps
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- " pv" opens file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>e", function ()
    vim.diagnostic.open_float(0, {scope="line"})
end)

