local autocmd = vim.api.nvim_create_autocmd
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Python
autocmd("FileType", {
	pattern = "python",
	callback = function()
		keymap("n", "<F12>",":w <Enter>:exec '!python3' shellescape(@%, 1)<Enter>", opts)
	end
})

-- Bash
autocmd("FileType", {
	pattern = "sh",
	callback = function()
		keymap("n", "<F12>",":w <Enter>:exec '!sh' shellescape(@%, 1)<Enter>", opts)
	end
})

-- Latex
autocmd("FileType", {
	pattern = "tex",
	callback = function()
		keymap("n", "<F10>",":w <Enter>:!pdflatex %< <Enter>", opts)
		keymap("n", "<F11>",":w <Enter>:!pdflatex %< && biber %< && pdflatex %< && zathura %<.pdf <Enter>", opts)
		keymap("n", "<F12>",":w <Enter>:!pdflatex %< && zathura %<.pdf <Enter>", opts)
	end
})
