-- ~/.config/nvim/lua/dashboard.lua
local db = require('dashboard')

db.setup({
  theme = 'doom',
  config = {
    header = {
  "                                                                                                               ",
  "                                                                        .                                      ",
  "                                      ;:                              .c.                                      ",
  "                                       :O:.                         'dk.                                       ",
  "                   '.                   ,XNo.                     ,kWk.                   ..                   ",
  "                    :dxl,.               .lXWk:.       .       ,lKWO,                .;oxo,                    ",
  "                      .lOXKkoc;;;.       . .cXMWo     .o     .0MMO'       '  ,;;;lxOXKx;                       ",
  "                          ,d0XWMWNk,   cl .' ,KWWd.   cX.   ;0WNx.'d'  .:k;cKMMMNKkl.                          ",
  "                        .     .xWldWx.kMc oX;  .:NN; .KMd  dMO..,OWX. .XMxx0dcl,     ..                        ",
  " .',;::;;,,;;;::cclodk0NWX0d:. xXcoNo;WM0cKMWx..dWM0.OMMW:;WMK:kWKKK.,cXl,,  lX; 'lxKNWXOxdolcc:;;;;,;;:::;,.. ",
  "     ..,;:cldxkOO00OOxlckk:.  'KMMKo. :kKMM0ckXNMNo. .KMd  ,0MMMK.l:dX,..kl :WMx.  .lOdcdkOO00Okxdolc:,'.      ",
  "                         .:x0NWW0oddxo  ,MX..;OMX;    cN.   .xWM0'. '0;.dMO..xNMWXko;.                         ",
  "                     .;dKNX00Od,     ...c:'oNMXx.     .d      ;0WW0; .,0xk0Kd..:xO0KXXOl'                      ",
  "                ..';cl:,.              .:kNNO;         .        .oKWKd,:dd. 'lo.     ..;cl:,..                 ",
  "                                    .:kOd;.                        .'ckOdc,    .                               ",
  "                                  .:c;.                                 .:c,                                   ",
  "                                  .                                         .                                  ",
},

    center = {
      { icon = '  ', desc = 'Nuevo archivo', action = 'enew', key = 'a' },
      { icon = '  ', desc = 'Archivos recientes', action = 'Telescope oldfiles', key = 'b' },
      { icon = '  ', desc = 'Última sesión', action = 'SessionLoad', key = 'c' },
      { icon = '  ', desc = 'Buscar archivo', action = 'Telescope find_files', key = 'd' },
      { icon = '  ', desc = 'Configuración', action = 'edit ~/.config/nvim/init.vim', key = 'e' },
    },
    footer = { "Neovim listo para apuntes ⚡" },
  }
})

