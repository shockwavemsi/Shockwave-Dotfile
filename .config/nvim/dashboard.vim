" Configuración del dashboard
let g:dashboard_default_executive = 'fzf'
let g:dashboard_custom_header = [
    \ '                                                                        .                                                      .                                                                        ',
            \ '                                                                        .                                                      .                                                                        ',
    \ '                                                                        ';.                                                  .;'                                                                        ',
    \ '                                                                         cx,                                                ,xc                                                                         ',
    \ '                                                                         .oKx,                                            ;kKo.                                                                         ',
    \ '                                                                           cXNk;                                        ;kNXc                                                                           ',
    \ '                                          ',.                               ;0WNO:.                                  .:ONW0;                               .,'                                          ',
    \ '                                          .:odl;..                           .xNMW0o'                              'o0WMNx.                           ..;ldo:.                                          ',
    \ '                                             ,dKX0xc,.                         ;xNMMNkl'          ....          ,lkNMMNk;                         .,cx0XKd,                                             ',
    \ '                                               .:xXWWKkdl:'.....                 'dXMMMNd.        'oo'        .dNMMMXd,           ..    .....':ldkKWWXx:.                                               ',
    \ '                                                  .:d0NMMWNXK000Oo'        .;'     :KMMMNo        :KK:        oNMMMK:   ..       :o' 'oO000KXNWMMN0d:.                                                  ',
    \ '                                                     .'lkKXWMMMWWWNx,    .lOl  'c.  ;0WMMNx'     .dWWd.     'xNMMW0;  ,xk,    .:OK:'dNMMMMMMWXKkl'.                                                     ',
    \ '                                                         ..,:xNW0dOWNd. .xW0' .dNd.  .,:l0WXl.   cXMMXc   .lXW0l:,.'lONMx.   ;0WWd:0WNKOxdo:,..                                                         ',
    \ '              ....                            ..;clc:,.      .dWO..oWNl.oWMK, '0MWO,     cNMWd. cXMMMMXc .dWMNc  .oXMMMMk.  ;XMWxcdo;'..;,       .,:clc;..                            ....              ',
    \ '              .';cloolc::;;,,,;;;:::cclloddxkO0XWMMMMWX0xl;. ;KNd;ckNk.'0MMWOcxNMMMNd' .oKMMMX:,KMMMMMMK,:XMMMKc;OWMKOXMd.,'cNKc.,'   .oNK; .;lx0XWMMMMWX0Okxddollcc:::;;;,,,;;::cloolc;'.              ',
    \ '                   .,:loxkOO0KXNWMMMMMMMMMMMMMMNKKNMMNk:'....dWWNWKdc.  :KMMMMMMWXKWMXkKMMMNOc. :KMMMMK: .cONMMWWMWO''O0,cKl.l; .ll.  oNMWd. ..':kNMMNKKNMMMMMMMMMMMMMMWNXK0OOkxol:,.                   ',
    \ '                            ...',;:cloodddooll:'..,ol'    .';dNMMMXkd:.  'co0WMM0,.,l0WMMMXc     :XMMX:     cXMMMMX: .l,.kMx.  ;KMx. ;XMMNd,'.    'lo,..':lloodddoolc:;,'...                            ',
    \ '                                                     .,cdOKNWMMWKO000K0o.   :NMK;   .lXMMNc      .xMMx.      cXMMMK:  .  ;Kk...oMM0' .oKWMMWNKOdc,.                                                     ',
    \ '                                                  .:d0WMMMMMMW0c. .  .;dl. .dWK: .ckXWMW0;        cXXc        ;0WMWXkc.   c:'l;oMMW0:. .c0WMMMMMMW0d:.                                                  ',
    \ '                                              .,lkXWWNXXK00ko;.         ...co:..lKWMMWKo.         ,xx,         .oKWMMWKl.   'O0xdx0NN0l. .;ok00KXXNWWXkl,.                                              ',
    \ '                                          .,cdO0Oxo:,'....                ...,oKWMMNx;.           .,,.           .;xNMMWKo,  :0NO,.';lkOo.    ....',:oxO0Odc,.                                          ',
    \ '                                     ..',;clc;'.                          .lONWXKOo'                                'oOKXWNOl'.;dx,    .ld,             .';clc;,'..                                     ',
    \ '                                      ..                               .ckXN0d;..                                      ..;dONXkc',c.     .,.                    ..                                      ',
    \ '                                                                     ;x0Odc'                                                'cdO0x:.                                                                    ',
    \ '                                                                   ;oo:.                                                        .:oo;                                                                   ',
    \ '                                                                  ';.                                                              .;'                                                                  ',
    \ '                                                                        .                                                      .                                                                        ',
    ,""


    ]
let g:dashboard_custom_section = {
    \ 'a': ['  Nuevo archivo', ':enew'],
    \ 'b': ['  Archivos recientes', ':History'],
    \ 'c': ['  Última sesión', ':SessionLoad'],
    \ 'd': ['  Buscar archivo', ':FZF'],
    \ 'e': ['  Configuración', ':e ~/.config/nvim/init.vim']
    \ }
let g:dashboard_custom_footer = ['Neovim listo para apuntes ⚡']
