-- telescope
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
		prompt_prefix = '❯ ',
		selection_caret = '❯ ',
		prompt_position = "top",
		sorting_strategy = "ascending",
		layout_defaults = {
      horizontal = {
        width_padding = 0.04,
        height_padding = 0.1,
        preview_width = 0.6,
      },
      vertical = {
        width_padding = 0.05,
        height_padding = 1,
        preview_height = 0.5,
      }
    },
    mappings = {
      n = {
        ["<Del>"] = actions.close
      },
    },
  }
}

local M = {}

M.project_files = function()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require'telescope.builtin'.git_files, opts)
  if not ok then require'telescope.builtin'.find_files(opts) end
end

function M.find_notes()
  require('telescope.builtin').file_browser {
    prompt_title = "\\ Notes /",
    shorten_path = false,
    cwd = "~/notes/",
    width = .25,

    layout_strategy = 'horizontal',
    layout_config = {
      preview_width = 0.65,
    },
  }
end

function M.vim_rtp()
  require('telescope.builtin').find_files {
    prompt_title = "\\ Vim RTP /",
    shorten_path = false,
    cwd = "~/.vim/",
    width = .25,

    layout_strategy = 'horizontal',
    layout_config = {
      preview_width = 0.65,
    },
  }
end

function M.nvim_config()
  require('telescope.builtin').file_browser {
    prompt_title = "\\ NVim Config /",
    shorten_path = false,
    cwd = "~/.config/nvim/",
    width = .25,

    layout_strategy = 'horizontal',
    layout_config = {
      preview_width = 0.65,
    },
  }
end

function M.file_explorer()
  require('telescope.builtin').file_browser {
    prompt_title = "\\ File Explorer /",
    shorten_path = false,
    cwd = "~",
    width = .25,

    layout_strategy = 'horizontal',
    layout_config = {
      preview_width = 0.65,
    },
  }
end

return M
