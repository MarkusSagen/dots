local utils = require "joel.utils"
local Job = require "plenary.job"

-- add current line as task to todoist
-- Using: https://github.com/sachaos/todoist
-- @TODOUA: check latest source for new features like 'Description'
-- @TODOUA: Widen reach beyond markdown
-- @TODOUA: Currently, the Neovim project is hardcoded, fix this

-- @TODOUA: Allow visual selection to be title? with...
-- @TODOUA: ...Telescope integration for selecting projects and/or titles

-- @TODOUA: Support for label, priority, dates, etc. ??
-- -- Right now, the label 'Neovim' is hardcoded by its ID
-- -- Right now, priority 3 is hardcoded
-- @TODOUA: Note to self: Maybe create a temp project like Inbox but only from here
-- -- -- This is already that. But, it might keep me up at night that it isn't really

local M = {}
function M.create_todoist_task()
  local current_line = vim.trim(string.gsub(vim.api.nvim_get_current_line(), "-", ""))
  local content = utils.get_os_command_output(
    { "todoist", "add", current_line, "-N", "Neovim", "-d", "today", "-L", "2154624877", "-p", "3" },
    "~"
  )

  require "notify"("Task Added: " .. current_line, "info", { title = "Todoist" })
  return content
end

function M.notify_current_datetime()
  local dt = vim.fn.strftime "%c"
  require "notify"("Current Date Time: " .. dt, "info", { title = "Date & Time" })
end

-- @TODOUA: is this a util? Should it be made into one?
function M.yank_current_file_name()
  local file_name = vim.api.nvim_buf_get_name(0)
  local input_pipe = vim.loop.new_pipe(false)

  local yanker = Job:new {
    writer = input_pipe,
    command = "pbcopy",
  }

  -- @TODOUA: This works perfectly but double-check if it could be better(less)
  yanker:start()
  input_pipe:write(file_name)
  input_pipe:close()
  yanker:shutdown()

  require "notify"("Yanked: " .. file_name, "info", { title = "File Name Yanker", timeout = 1000 })
end

-- clear nvim-notify notifications history
function M.clear_notification_history()
  local choice = vim.fn.confirm("Clear Notification History?", "&Yes\n&No\n&Cancel")
  if choice == 1 then
    R "notify"
    print "Notification History Cleared"
  else
    print "Notification History Remains"
  end
end

-- cliclick goodness
-- click notification banner. MacOS specific - 2560x1440
function M.click_banner_notification()
  local _ = utils.get_os_command_output({ "cliclick", "c:2525,30" }, "~")
  return _
end

-- cliclick -> move pointer off top Mac sys menu - MacOS specific - 2560x1440
-- most annoying issue in Big Sur!!!!
function M.move_pointer_off_menu()
  local _ = utils.get_os_command_output({ "cliclick", "m:1300,95" }, "~")
  return _
end

return M
