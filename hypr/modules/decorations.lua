-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 20,

		border_size = 3,

		col = {
			active_border = { colors = { "#29562D", "#61A06C" }, angle = 45 },
			inactive_border = "#624426",
		},

		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,

		-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
		allow_tearing = false,

		layout = "dwindle", --dwindle
	},

	decoration = {
		rounding = 30,
		rounding_power = 5,

		-- Change transparency of focused and unfocused windows
		active_opacity = 0.8,
		inactive_opacity = 0.7,

		shadow = {
			enabled = true,
			range = 60,
			render_power = 7,
			color = "#853C77",
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})
