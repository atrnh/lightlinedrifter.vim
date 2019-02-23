" Adapted from one.vim by Zoltan Dalmadi

" Common colors
let s:fg     = [ '#9b61e8', 15 ]
let s:blue   = [ '#2199ff', 4 ]
let s:green  = [ '#01c8ba', 2 ]
let s:purple = [ '#a489fc', 6 ]
let s:red1   = [ '#fd28a2', 5 ]
let s:red2   = [ '#e22b75', 1 ]
let s:yellow = [ '#fc89a1', 3 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:bg     = [ '#ffffff', 231 ]
let s:gray1  = [ '#eeeeee', 255 ]
let s:gray2  = [ '#dfdfff', 189 ]
let s:gray3  = [ '#afdfff', 153 ]

let s:p.normal.left     = [ [ s:bg, s:fg ], [ s:fg, s:gray2 ] ]
let s:p.normal.middle   = [ [ s:red1, s:bg ] ]
let s:p.inactive.left   = [ [ s:bg,  s:gray3 ], [ s:bg, s:gray3 ] ]
let s:p.inactive.middle = [ [ s:gray3, s:gray2 ] ]
let s:p.inactive.right  = [ [ s:bg, s:gray3 ], [ s:bg, s:gray3 ] ]
let s:p.insert.left     = [ [ s:bg, s:green ], [ s:fg, s:gray1 ] ]
let s:p.replace.left    = [ [ s:bg, s:red1 ], [ s:gray1, s:gray3 ] ]
let s:p.visual.left     = [ [ s:bg, s:purple ], [ s:fg, s:gray3 ] ]

" Common
let s:p.normal.right   = [ [ s:bg, s:fg ], [ s:bg, s:fg ] ]
let s:p.normal.error   = [ [ s:red2,   s:bg ] ]
let s:p.normal.warning = [ [ s:yellow, s:bg ] ]
let s:p.insert.right   = [ [ s:bg, s:green ], [ s:bg, s:green ] ]
let s:p.replace.right  = [ [ s:bg, s:red1 ], [ s:bg, s:red1 ] ]
let s:p.visual.right   = [ [ s:bg, s:purple ], [ s:bg, s:purple ] ]
let s:p.tabline.left   = [ [ s:bg, s:gray3 ] ]
let s:p.tabline.tabsel = [ [ s:bg, s:purple ] ]
let s:p.tabline.middle = [ [ s:gray3, s:gray2 ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let g:lightline#colorscheme#lightlinedrifter#palette = lightline#colorscheme#flatten(s:p)
