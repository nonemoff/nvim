map = vim.api.nvim_set_keymap

-- Function to add hotkey in "normal mode"
function nm(key, command)
	map('n',key, command, {noremap = true})
end

-- Functiom to add hotkey in "input mode"
function im(key,command)
	map('i', key, command, {noremap = true})
end

-- Function to add hotkey in "visual mode"
function vm(key, command)
	map('v', key, command, {noremap = true})
end

-- Function to add hotkey in "terminal mode"
function tm(key, command)
	map('v', key, commandm {noremap = true})
end

