-- ============================================
--  HYPRLAND CONFIGURACIÓN COMPLETA (LUA)
--  Basado en tu configuración personal
--  Sintaxis oficial Hyprland v0.55+
-- ============================================

------------------
---- MONITORS ----
------------------

hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@144",
    position = "0x0",
    scale    = 1,
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@144",
    position = "auto",
    scale    = 1,
})


---------------------
---- MY PROGRAMS ----
---------------------

local terminal    = "kitty"
local fileManager = "nemo"
local menu        = "tofi-drun --drun-launch=true"
local browser     = "librewolf"
local notes       = "obsidian"
local editor      = "code"
local editor_alt  = "subl"
local colorPicker = "hyprpicker"


-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function ()
    -- Autenticación (polkit)
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
    
    -- Notificaciones (Mako)
    hl.exec_cmd("mako")
    
    -- Barra de estado
    hl.exec_cmd("waybar")
    
    -- Fondo de pantalla (Awww o Swww)
   hl.exec_cmd("awww-daemon")
    
    -- Portapapeles (Cliphist)
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    
    -- Gestión de energía e inactividad
    hl.exec_cmd("hypridle")
    
    -- Permisos X11 (para apps legacy)
    hl.exec_cmd("xhost +SI:localuser:root")
    
    -- Actualizar entorno para systemd
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)

-- Evento al cerrar Hyprland (opcional)
hl.on("hyprland.shutdown", function ()
    -- Limpiar archivos temporales o guardar estado
    -- hl.exec_cmd("rm -rf /tmp/hyprland-*")
end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- GPU Hybrid (AMD + NVIDIA)
hl.env("LIBVA_DRIVER_NAME", "radeonsi")
hl.env("mesa_glthread", "true")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "mesa")


-----------------------
----- PERMISSIONS -----
-----------------------

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")


-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in  = 10,
        gaps_out = 10,
        border_size = 2,
        col = {
            active_border   = "000000",    -- Rojo neón para ventana activa
            inactive_border = "#000000",    -- Rojo oscuro para inactivas
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding       = 5,
        rounding_power = 2,
        active_opacity   = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },
        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

-- Curvas y animaciones por defecto
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- Springs por defecto
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 })

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

-- "Smart gaps" / "No gaps when only" (opcional)
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })


-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true,
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})


----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo   = false,
    },
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "es",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"

-- Aplicaciones
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(notes))
--hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(editor))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(editor_alt))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("kitty -e rmpc"))

-- Acciones de ventanas
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + W", hl.dsp.window.float({ action = "toggle" }))

-- Capturas de pantalla
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("grimblast --notify copy area"))

-- Movimiento de foco
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Workspaces (1-10)
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Workspace especial (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Movimiento/redimension con ratón
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(mainMod .. " + Z", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + X", hl.dsp.window.resize(), { mouse = true })

-- Redimension con teclado
hl.bind(mainMod .. " + SHIFT + Right", hl.dsp.window.resize({ x = 30, y = 0 }), { locked = true, repeating = true })
hl.bind(mainMod .. " + SHIFT + Left",  hl.dsp.window.resize({ x = -30, y = 0 }), { locked = true, repeating = true })
hl.bind(mainMod .. " + SHIFT + Up",    hl.dsp.window.resize({ x = 0, y = -30 }), { locked = true, repeating = true })
hl.bind(mainMod .. " + SHIFT + Down",  hl.dsp.window.resize({ x = 0, y = 30 }), { locked = true, repeating = true })


-- Salir y bloquear
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + ESCAPE", hl.dsp.exec_cmd("wlogout"))


-- Capturas de pantalla (adicionales)
hl.bind("Print", hl.dsp.exec_cmd("grimblast --notify copysave screen"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd("grimblast --notify copysave active"))
hl.bind("SUPER + ALT + Print", hl.dsp.exec_cmd("grimblast --notify copysave area"))

-- Volumen y multimedia
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pamixer -i 5"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pamixer -d 5"), { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("pamixer -t"),   { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("pamixer --default-source -m"), { locked = true, repeating = true })
hl.bind("XF86AudioPlay",        hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause",       hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioNext",        hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPrev",        hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl s +5%"),  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl s 5%-"),  { locked = true, repeating = true })


--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- Suprimir eventos de maximizar
hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Arreglar problemas de arrastre con XWayland
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- Ventanas flotantes y centradas para aplicaciones específicas
hl.window_rule({
    name  = "float-waypaper",
    match = { class = "waypaper" },
    float = true,
    center = true,
    size = "60% 60%"
})

hl.window_rule({
    name  = "float-pavucontrol",
    match = { class = "org.pulseaudio.pavucontrol" },
    float = true,
    center = true,
    size = "50% 50%"
})

hl.window_rule({
    name  = "float-blueman",
    match = { class = "blueman-manager" },
    float = true,
    center = true,
    size = "50% 50%"
})

-- Regla para ventanas emergentes de Zen Browser
hl.window_rule({
    name  = "float-zen-popups",
    match = {
        class = "zen",
        title = ".*(Sign in|Log in|Login|Iniciar sesión|Auth).*"
    },
    float = true,
    center = true
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120",
    float = true,
})
