local servers = {
    -- lsp
        -- "custom-elements-ls", --custom_elements_languageserver
        -- "sumneko_lua", --Lua 	
        -- "biome", --JavaScript, TypeScript 	
        "bashls", --bash
        "cssls", --CSS 	
        "cssmodules_ls", --CSS 	
        "diagnosticls", --Diagnostic (general purpose server)	
        "eslint", --ESLint  	
        "emmet_ls", --Emmet 	
        "grammarly", --Grammarly 	
        "html", --HTML 	
        "jsonls", --JSON 	
        "quick_lint_js", --JavaScript 	
        "tsserver", --JavaScript, TypeScript 	
        "marksman", --Markdown 	
        "prosemd_lsp", --Markdown 	
        "remark_ls", --Markdown 	
        "zk", --Markdown 	
        "sqlls", --SQL 	
        "vimls", --VimL 	
        "clangd"

    -- Dap
        -- "js-debug-adapter", --(keywords: javascript, typescript)
        -- "firefox-debug-adapter", --(keywords: javascript, typescript)
        -- "chrome-debug-adapter", --(keywords: javascript, typescript)
        -- "bash-debug-adapter", --(keywords: bash)

    -- Linters (overlapping)
        -- write-good
        -- vint
        -- ts-standard
        -- textlint
        -- stylelint
        -- standardjs
        -- sqlfluff
        -- semgrep
        -- selene
        -- proselint
        -- markuplint
        -- markdownlint
        -- jsonlint
        -- gitlint
        -- eslint_d
        -- cspell
        -- commitlint
        -- codespell
        -- biome
        -- quick-lint-js quick_lint_js
        -- shellcheck


    -- Formatters
        -- rustywind
        -- stylua
        -- sqlfmt
        -- sql-formatter
        -- shfmt
        -- remark-cli
        -- prettierd
        -- prettier
        -- mdformat
        -- markdown-toc
        -- jq
        -- fixjson
        -- doctoc
        -- cbfmt
        -- ts-standard
        -- standardjs
        -- markdownlint
        -- beautysh
        -- biome
}

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = servers,
}

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
      window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({select = false}),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        -- Default bindings
        -- Ctrl-y>: Confirms selection.
        -- <Ctrl-e>: Cancel completion.
        -- <Down>: Navigate to the next item on the list.
        -- <Up>: Navigate to previous item on the list.
        -- <Ctrl-n>: If the completion menu is visible, go to the next item. Else, trigger completion menu.
        -- <Ctrl-p>: If the completion menu is visible, go to the previous item. Else, trigger completion menu.
        -- <Ctrl-d>: Scroll down the documentation window.
        -- <Ctrl-u>: Scroll up the documentation window.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
    }, {
      { name = 'buffer' },
    }),
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
     formatting = {
    format = function(entry, vim_item)
      vim_item.menu = ({
        nvim_lsp = "nvim_lsp",
        nvim_lua = "nvim_lua",
        luasnip = "luasnip",
        buffer = "buffer",
        path = "path",
        emoji = "",
      })[entry.source.name]
      return vim_item
    end,
  },
})
-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})
-- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
    --   capabilities = capabilities
