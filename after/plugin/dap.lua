local dap, dapui = require("dap"), require("dapui")
dapui.setup()
dap.adapters.firefox = {
    type = 'executable',
    command = 'node',
    args = {os.getenv('HOME') .. '/path/to/vscode-firefox-debug/dist/adapter.bundle.js'},
}

-- dap.configurations.typescript = {
dap.configurations.javascript = {
    {
        name = 'Debug with Firefox',
        type = 'firefox',
        request = 'launch',
        reAttach = true,
        -- url = 'http://localhost:3000',
        url = 'http://127.0.0.1:8080',
        webRoot = '${workspaceFolder}',
        firefoxExecutable = '/usr/bin/firefox'
    },
}
dap.configurations.lua = {
  {
    name = 'Current file (local-lua-dbg, lua)',
    type = 'local-lua',
    request = 'launch',
    cwd = '${workspaceFolder}',
    program = {
      lua = 'lua5.1',
      file = '${file}',
    },
    args = {},
  },
}
dap.adapters["local-lua"] = {
  type = "executable",
  command = "node",
  args = {
    "/absolute/path/to/local-lua-debugger-vscode/extension/debugAdapter.js"
  },
  enrich_config = function(config, on_config)
    if not config["extensionPath"] then
      local c = vim.deepcopy(config)
      -- 💀 If this is missing or wrong you'll see 
      -- "module 'lldebugger' not found" errors in the dap-repl when trying to launch a debug session
      c.extensionPath = "/absolute/path/to/local-lua-debugger-vscode/"
      on_config(c)
    else
      on_config(config)
    end
  end,
}

local mappings = {
    ["<A-c>"] = dap.continue,
    ["<A-right>"] = dap.step_over,
    ["<A-down>"] = dap.step_into,
    ["<A-up>"] = dap.step_out,
    ["<A-x>"] = dap.toggle_breakpoint,
    ["<A-t>"] = function()
        dapui.toggle({ reset = true })
    end,
    ["<A-k>"] = dapui.eval,
    ["<A-w>"] = dapui.elements.watches.add,
    ["<A-m>"] = dapui.float_element,
    ["<A-v>"] = function()
        dapui.float_element("scopes")
    end,
    ["<A-r>"] = function()
        dapui.float_element("repl")
    end,
    ["<A-q>"] = dap.terminate,
}
for keys, mapping in pairs(mappings) do
    vim.api.nvim_set_keymap("n", keys, "", { callback = mapping, noremap = true })
end
