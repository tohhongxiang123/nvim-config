local setup, wilder = pcall(require, "wilder")
if not setup then
	return
end

wilder.setup({
	modes = { ":", "/", "?" },
	accept_key = "<Right>",
	reject_key = "<Left>",
})
