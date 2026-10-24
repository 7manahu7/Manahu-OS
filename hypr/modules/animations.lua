hl.curve("smoothFast", {
	type = "bezier",
	points = { { 0.15, 1 }, { 0.3, 1 } },
})

-- Global animation fallback
hl.animation({ leaf = "global", enabled = true, speed = 4.5, bezier = "smoothFast" })

-- Windows & Layers: Fast sliding profiles
hl.animation({ leaf = "windows", enabled = true, speed = 4.0, bezier = "smoothFast", style = "slide" })
hl.animation({ leaf = "layers", enabled = true, speed = 4.0, bezier = "smoothFast", style = "slide" })

-- Workspaces: Configured for fast vertical sliding transitions
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.2, bezier = "smoothFast", style = "slidevert" })

