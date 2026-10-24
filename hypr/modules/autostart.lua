-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--

hl.on("hyprland.start", function()
	-- Start components individually (No empty strings, no raw ampersands)
	hl.exec_cmd("waybar")
	hl.exec_cmd("awww-daemon")
  hl.exec_cmd("zoxide init fish | source")

	hl.exec_cmd("hyprctl setcursor 'Night Diamond (blue)' 24")

	-- Use full home directory logic for variables and scripts
	local home = os.getenv("HOME")
	hl.exec_cmd(home .. "/.config/hypr/scripts/message.sh")
end)
