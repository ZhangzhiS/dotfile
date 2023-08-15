-- cSpell:words koekeishiya yabai fullscreen unfloat hjkl
--
-- ██╗   ██╗ █████╗ ██████╗  █████╗ ██╗
-- ╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗██║
--  ╚████╔╝ ███████║██████╔╝███████║██║
--   ╚██╔╝  ██╔══██║██╔══██╗██╔══██║██║
--    ██║   ██║  ██║██████╔╝██║  ██║██║
--    ╚═╝   ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝
--
-- https://github.com/koekeishiya/yabai

local function yabai(commands)
	for _, cmd in ipairs(commands) do
		os.execute("/usr/local/bin/yabai -m " .. cmd)
	end
end

local function sketchybar(commands)
	for _, cmd in ipairs(commands) do
		os.execute("/usr/local/bin/sketchybar" .. cmd)
	end
end

local function alt(key, commands)
	hs.hotkey.bind({ "alt" }, key, function()
		yabai(commands)
	end)
end

local function altShift(key, commands)
	hs.hotkey.bind({ "alt", "shift" }, key, function()
		yabai(commands)
	end)
end


altShift("e", {"yabai -m space --balance"})

local function altShiftNumber(number)
	altShift(number, { "window --space " .. number, "space --focus " .. number })
end

for i = 1, 9 do
	local num = tostring(i)
	alt(num, { "space --focus " .. num })
	altShiftNumber(num)
end

-- NOTE: use as arrow keys
local homeRow = { h = "west", j = "south", k = "north", l = "east" }

for key, direction in pairs(homeRow) do
	alt(key, { "window --focus " .. direction })
	altShift(key, { "window --swap " .. direction })
end

local function shiftAltThenSketchybar(key, commands, s_commands)
	hs.hotkey.bind({ "alt", "shift" }, key, function()
		yabai(commands)
		sketchybar(s_commands)
	end)
end

hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "r", function()
	os.execute("/usr/local/bin/yabai --restart-service")
end)

-- alt
-- 窗口放大
alt("f", { "window --toggle zoom-fullscreen" })
-- 应用显示，类似 ctrl+↑
alt("m", { "space --toggle mission-control" })
-- 窗口缩小到右上角
alt("p", { "window --toggle pip" })
-- 窗口全屏
alt("g", { "space --toggle padding", "space --toggle gap" })
-- 窗口旋转90度排列
alt("r", { "space --rotate 90" })
-- 窗口全屏
alt("t", { "window --toggle float", "window --grid 4:4:1:1:2:2" })

-- special characters
alt("'", { "space --layout stack" })
alt(";", { "space --layout bsp" })
alt("tab", { "space --focus recent" })

-- 创建新的活动空间
shiftAltThenSketchybar("n", { "space --create" }, { "--trigger windows_on_spaces" })
-- 删除当前活动空间
shiftAltThenSketchybar("d", { "space --destroy" }, { "--trigger window_focus" })
