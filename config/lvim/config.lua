-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "embark"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

require("transparent").setup({
    enable = true,
})

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

lvim.keys.normal_mode["<C-o>"] = ":NvimTreeToggle<CR>"
lvim.keys.normal_mode["<C-t>"] = ":ToggleTerm<CR>"
lvim.keys.normal_mode["<C-q>"] = ":Alpha<CR>"

-- Telescope
lvim.builtin.telescope.defaults.file_ignore_patterns = { "%/.git/", "%/target/", "%/Cargo.lock", "%/node_modules/",
    "%/build/" }
lvim.builtin.telescope.defaults.respect_gitignore = true

-- Enable plugins
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Required treesitter parsers
lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
    "go",
}

-- Additional plugins
lvim.plugins = {
    { "folke/tokyonight.nvim" },
    { "xiyaowong/nvim-transparent" },
    { "github/copilot.vim" },
    { 'embark-theme/vim', as = 'embark' }
}

-- Formatters
require("lvim.lsp.null-ls.formatters").setup({
    { command = "black", filetypes = { "python" } }
})

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
