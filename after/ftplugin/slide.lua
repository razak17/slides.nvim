local completion_store = { "bfraktur", "emboss", "emboss2", "bigascii12", "letter", "bigmono12", "wideterm", "term" }

vim.api.nvim_create_user_command("SlideAscii", function(opts)
	local params = vim.split(opts.args, "%s+", { trimempty = true })

	local mod_name = params[1]
	if not mod_name then
		mod_name = "term"
	end

	if not vim.tbl_contains(completion_store, mod_name) then
		print("[Slide] Unknown param: " .. mod_name)
		return
	end

	require("slide").ascii(mod_name)
end, {
	bang = true,
	nargs = "?",
	complete = function(_, cmd_line)
		local params = vim.split(cmd_line, "%s+", { trimempty = true })

		if #params == 1 then
			return completion_store
		end
	end,
})
