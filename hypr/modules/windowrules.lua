
--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

hl.layer_rule({
	match = { namespace = "rofi" },

	blur = true,
	ignore_alpha = 0.3,
	dim_around = true,
})

hl.window_rule({
	"float,class:(anime-popup)",
	"center,class:(anime-popup)",
	"size 700 500,class:(anime-popup)",
})

hl.config({
	misc = {
		enable_swallow = true,
		swallow_regex = "^(kitty|Alacritty|foot|st)$",
	},
})

hl.window_rule({
	name = "alacritty-opaque",
	match = { class = "Alacritty" },

	opacity = "1.0 override 1.0 override 1.0 override",
})

-- 1. Give hyprpm permission to load the plugin at runtime
hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")

-- 2. Guard wrapper to ensure hyprglass is loaded before calling its config
if hl.plugin and hl.plugin.hyprglass then
	local hg = hl.plugin.hyprglass

	hg.config({
		default_theme = "dark",
		default_preset = "glass",

		-- --- TWEAK BLUR & OPACITY HERE ---
		blur_strength = 0.5, -- Lower = sharper background (Default is 2.0)
		blur_iterations = 3, -- Lower = less muddy/fuzzy (Default is 3)
		glass_opacity = 0.75, -- Translucency of the glass layer (0.0 to 1.0)
		tint_color = 0x8899aa11, -- Background tint tint. Last two digits (11) control tint alpha

		layers = { enabled = 1 },
	})

	-- 3. Target your standard layer namespaces instead of Quickshell
	hg.layer("waybar", { preset = "glass" })
	hg.layer("swaync", { preset = "glass" })
	hg.layer("rofi", { preset = "glass" })
end



-- Allow tearing for low-latency gaming
hl.config({
	general = {
		allow_tearing = true,
	},
})

-- Force immediate rendering (bypasses VSync buffers) for Brawlhalla
hl.window_rule({
	name = "brawlhalla-immediate",
	match = {
		class = "Brawlhalla",
	},
	immediate = true,
})


-- ~/.config/hypr/hyprland.lua

hl.on("window.urgent", function(w)
    -- Verify the event belongs to Steam
    if w.class == "steam" then
        -- Execute notify-send asynchronously without blocking the compositor
        hl.dsp.exec_cmd("notify-send 'New message.'")
        
        -- Alternatively, you can use Hyprland's built-in lightweight notification system:
        -- hl.notification.create({ text = "New message.", timeout = 3000, icon = "info" })
    end
end)

plugin = {
    dynamic_cursors = {
        mode = "tilt",

        tilt = {
            limit = 1.5,
            func = "quadratic"
        },

        shake = {
            enabled = true,
            threshold = 4,
            base = 3,
            speed = 4
        }
    }
}

-- Floating window rule for your terminal menu
hl.window_rule({
    name = "locksize", 
    match = { class = "Theme-Switcher" },
    float = true,
    size = { 950, 620 },
    min_size = { 950, 620 },
    max_size = { 950, 620 },
    center = true,
})

hl.window_rule({
    name = "locksize", 
    match = { class = "Theme-Switcher" },
    pin = true

})

