local create_cmd = vim.api.nvim_create_user_command

create_cmd(
  "ReloadConfig", 
  function ()
    -- local filepath = (vim.fn.stdpath("config").."/init.lua")
    local filepath = vim.fn.expand("%")

    dofile(filepath)
    vim.notify("Configuration reloaded \n" .. filepath, nil, {
      title = "commands.lua"
    })
  end,
  {}
)
