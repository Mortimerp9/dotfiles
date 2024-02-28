-- Returns a function that takes a URL and opens it in the given Chrome profile
-- Note: the value of `profile` must be the name of the profile directory under
-- ~/Library/Application Support/Google/Chrome/
function chromeProfile(profile)
	return function(url)
		hs.task.new("/usr/bin/open", nil, { "-n",
			"-a", "Google Chrome",
			"--args",
			"--profile-directory=" .. profile,
			url }):start()
	end
end

-- Define my default browsers for various purposes
browsers = {
	default = chromeProfile("Default"),
	work    = chromeProfile("Profile 1")
}

Install:andUse("URLDispatcher",
	{
		config = {
			default_handler = browsers.default,
			url_patterns = {
				{ "https://docs%.google%.com/.*", browsers.work },
				{ "https://fburl%.com/gdrive/.*", browsers.work },
			},
		},
		start = true,
		-- loglevel = 'debug'
	}
)
