local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- ui
    { import = "plugins.ui.catppuccin" },
    { import = "plugins.ui.lualine" },
    { import = "plugins.ui.rainbow-delimiters" },
    { import = "plugins.ui.smear-cursor" },

    -- lsp
    { import = "plugins.lsp.lspconfig" },
    { import = "plugins.lsp.mason" },
    { import = "plugins.lsp.rustaceanvim" },
    { import = "plugins.lsp.treesitter" },
    { import = "plugins.lsp.typescript-tools" },

    -- completions/ai
    { import = "plugins.completions.blink" },
    { import = "plugins.completions.luasnip" },
    { import = "plugins.completions.copilot" },
    { import = "plugins.completions.codecompanion" },

    -- explorers
    { import = "plugins.explorers.mini" },
    { import = "plugins.explorers.neotree" },
    { import = "plugins.explorers.oil" },
    { import = "plugins.explorers.yazi" },

    -- editor
    { import = "plugins.editor.conform" },
    { import = "plugins.editor.flash" },
    { import = "plugins.editor.fzf" },
    { import = "plugins.editor.surround" },
    { import = "plugins.editor.snacks" },
    { import = "plugins.editor.trouble" },

    { import = "plugins.dap" },
})
