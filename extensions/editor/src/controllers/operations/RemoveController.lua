local param = require "param"
local exit = require "exit"
local util = require "util"
local editor = require "Editor"



local function process ()
	local path = param.path

	if util.isNotEmpty(param.repository) and util.isNotEmpty(param.username) and util.isNotEmpty(param.password) then
		local repository = require(param.repository)

		local username = param.username
		local password = param.password

		if param.repository == "GIT" and param.isFile == "false" then
			editor.remove(path)
		else
			return repository.delete(username, password, path)
		end
	else    
		editor.remove(path)
	end
end


local status, res = pcall(process)
if status then
	if res then ngx.say(res) end
else
	exit(res)
end