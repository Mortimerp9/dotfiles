-- assign keys to apps for quick switching

local am = require('utils.app-management')

hyper.bindKey('p', function() am.switchToAndFromApp("com.spotify.client") end)
hyper.bindShiftKey('p', function() hs.spotify.displayCurrentTrack() end)
hyper.bindKey('g', function() am.switchToAndFromApp("com.google.Chrome") end)
hyper.bindKey('f', function() am.switchToAndFromApp("com.apple.finder") end)
hyper.bindKey('w', function() am.switchToAndFromApp("WhatsApp") end)
hyper.bindKey('t', function() am.switchToAndFromApp("com.github.wez.wezterm") end)
