local slide = {}

slide.ascii = function(type)
	local args = type

	if args == "term" then
		args = "term -F border"
	end

	vim.cmd(".!toilet -w 200 -f " .. args)
end

return slide
