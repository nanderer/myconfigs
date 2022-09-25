-- based on subpipe_by_sfan5.lua
local outf = io.open("/tmp/subcat", "a")
outf:setvbuf("line")
mp.observe_property("sub-text", "native", function(_, value)
	if value == nil then return end
	outf:write(value .. "\n")
end)
