local status_ok, _ = pcall(require, "mini.pairs")
if not status_ok then
  return
end

require("mini.pairs").setup {
	modes = { insert = true, command = false, terminal = false },

	mappings = {
		['('] = { action = 'open', pair = '()', neigh_pattern = '[^\\].' },
		['['] = { action = 'open', pair = '[]', neigh_pattern = '[^\\].' },
		['{'] = { action = 'open', pair = '{}', neigh_pattern = '[^\\].' },

		[')'] = { action = 'close', pair = '()', neigh_pattern = '[^\\].' },
		[']'] = { action = 'close', pair = '[]', neigh_pattern = '[^\\].' },
		['}'] = { action = 'close', pair = '{}', neigh_pattern = '[^\\].' },

		['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '[^\\].', register = { cr = true } },
		["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '[^%a\\].', register = { cr = true } },
		['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '[^\\].', register = { cr = true } },
	}
}

require("mini.comment").setup {
	mappings = {
		comment = 'gc',
		comment_line = 'gcc',
		textobject = 'gc',
	},
}

require("mini.surround").setup {
	n_lines = 40,
	highlight_duration = 1000,

	mappings = {
		add = "ys",
		delete = "ds",
		replace = "cs",
		find = "yf",
		find_left = "yF",
		highlight = "yh",
		update_n_lines = "yn",
	}
}

require("mini.cursorword").setup {
	delay = 100
}
