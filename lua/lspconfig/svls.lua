local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

local server_name = 'svls'

configs[server_name] = {
  default_config = {
    cmd = { 'svls' },
    filetypes = { 'verilog', 'systemverilog' },
    root_dir = util.find_git_ancestor,
  },
  docs = {
    description = [[
https://github.com/dalance/svls

Language server for verilog and SystemVerilog

`svls` can be installed via `cargo`:
 ```sh
 cargo install svls
 ```
    ]],
    default_config = {
      root_dir = [[util.find_git_ancestor]],
    },
  },
}
