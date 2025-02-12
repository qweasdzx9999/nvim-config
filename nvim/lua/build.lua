local function run_build_command_terminal()
  local filetype = vim.bo.filetype

  if filetype == "rust" then
    -- Rust 项目: 使用 cargo build 在终端窗口
    vim.cmd("lcd %:p:h | terminal cargo run") -- 使用 terminal 命令
  elseif filetype == "go" then
    -- Go 项目: 使用 go build 在终端窗口
    vim.cmd("lcd %:p:h | terminal go build") -- 使用 terminal 命令
  elseif filetype == "python" then
    -- Python 文件: 在终端窗口运行 Python 脚本
    vim.cmd("terminal python %") -- 使用 terminal 命令直接运行 Python 文件
    -- 如果你想使用 py_compile 进行编译 (可选) 在终端窗口:
    -- vim.cmd("terminal python -m py_compile %")
  elseif filetype == "c" or filetype == "cpp" then
    -- C/C++ 文件: 使用 gcc/g++ 编译 在终端窗口
    local filename = vim.fn.expand("%:t:r")
    local compiler = (filetype == "cpp" and "g++" or "gcc")
    vim.cmd("terminal " .. compiler .. " % -o " .. filename) -- 使用 terminal 命令
  elseif filetype == "javascript" or filetype == "typescript" then
    -- JavaScript/TypeScript 项目: 使用 npm run build 在终端窗口
    vim.cmd("lcd %:p:h | terminal npm run build") -- 使用 terminal 命令
    -- 或者如果是 TypeScript 单文件，可以使用 tsc 编译 在终端窗口
    -- vim.cmd("terminal tsc %")
  else
    vim.notify("No build command configured for filetype: " .. filetype, vim.log.levels.WARN, { title = "Build Command in Terminal" })
    return
  end

  vim.notify("Build command executed in terminal for filetype: " .. filetype, vim.log.levels.INFO, { title = "Build Command in Terminal" })
end

-- 快捷键映射: <leader>B (Shift + b) 用于在终端窗口执行 Build 命令
vim.keymap.set('n', '<F8>', run_build_command_terminal, { desc = "Run Build Command in Terminal (Filetype-Aware)" })
