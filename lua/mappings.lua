require "nvchad.mappings"

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")



-- DAP key bindings
-- TODO: These DAP mappings should only be enabled when DAP is loaded

-- DAP Normal mode mappings:
map("n", "<leader>db",
    "<cmd> DapToggleBreakpoint <CR>",
    {desc = "Add breakpoint at line"})
map("n", "<leader>dB",
    "<cmd> lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) <CR>",
    {desc = "Add breakpoint with condition at line"})
map("n", "<leader>dL",
    "<cmd> lua require('dap').set_breakpoint(nil, nul, vim.fn.input('Log point message: ')) <CR>",
    {desc = "Log point"})
map("n", "<leader>dr",
    "<cmd> DapContinue <CR>",
    {desc = "Start or continue the debugger"})
map("n", "<leader>dR",
    "<cmd> lua require('dap').run_last() <CR>",
    {desc = "Run last"})
map("n", "<leader>de",
    "<cmd> lua require('dapui').eval() <CR>",
    {desc = "Evaluate variable under cursor"})
map("n", "<leader>dp",
    "<cmd> lua require('dap').repl.open() <CR>",
    {desc = "Open REPL"})
map("n", "<leader>dt",
    "<cmd> DapTerminate <CR>",
    {desc = "Terminate debugging"})
map("n", "<F5>",
    "<cmd> DapContinue <CR>",
    {desc = "Start or continue the debugger"})
map("n", "<F10>",
    "<cmd> DapStepOver <CR>",
    {desc = "Step over"})
map("n", "<F11>",
    "<cmd> DapStepInto <CR>",
    {desc = "Step into"})
map("n", "<F12>",
    "<cmd> DapStepOut <CR>",
    {desc = "Step out"})

-- DAP Python: Normal mode mappings:
--map("n", <leader>dpr", 
--    function()
--        require("dap-python").test_method()
--    end)

-- Copilot key bindings
map("i", "<C-l>",
    function()         
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')  
    end,  
    {desc = "Copilot Accept", replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true})
