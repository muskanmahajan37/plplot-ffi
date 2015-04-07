-- Do not change this file manually
-- Generated with dev/create-api.lua

local ffi = require 'ffi'
local loaded, C = pcall(ffi.load, 'plplotd')
if not loaded then
   C = ffi.load('libplplotd.so.11')
end
local pl = {C = C}

require 'plplot.cdefs'

local function register(luafuncname, funcname)
    local symexists, msg = pcall(function()
                              local sym = C[funcname]
                           end)
    if symexists then
        pl[luafuncname] = C[funcname]
    end
end

register('_setcontlabelformat', 'c_pl_setcontlabelformat')
register('_setcontlabelparam', 'c_pl_setcontlabelparam')
register('adv', 'c_pladv')
register('arc', 'c_plarc')
register('axes', 'c_plaxes')
register('bin', 'c_plbin')
register('btime', 'c_plbtime')
register('bop', 'c_plbop')
register('box', 'c_plbox')
register('box3', 'c_plbox3')
register('calc_world', 'c_plcalc_world')
register('clear', 'c_plclear')
register('col0', 'c_plcol0')
register('col1', 'c_plcol1')
register('configtime', 'c_plconfigtime')
register('cont', 'c_plcont')
register('cpstrm', 'c_plcpstrm')
register('ctime', 'c_plctime')
register('end', 'c_plend')
register('end1', 'c_plend1')
register('env', 'c_plenv')
register('env0', 'c_plenv0')
register('eop', 'c_pleop')
register('errx', 'c_plerrx')
register('erry', 'c_plerry')
register('famadv', 'c_plfamadv')
register('fill', 'c_plfill')
register('fill3', 'c_plfill3')
register('flush', 'c_plflush')
register('font', 'c_plfont')
register('fontld', 'c_plfontld')
register('gchr', 'c_plgchr')
register('gcol0', 'c_plgcol0')
register('gcol0a', 'c_plgcol0a')
register('gcolbg', 'c_plgcolbg')
register('gcolbga', 'c_plgcolbga')
register('gcompression', 'c_plgcompression')
register('gdev', 'c_plgdev')
register('gdidev', 'c_plgdidev')
register('gdiori', 'c_plgdiori')
register('gdiplt', 'c_plgdiplt')
register('gdrawmode', 'c_plgdrawmode')
register('gfci', 'c_plgfci')
register('gfam', 'c_plgfam')
register('gfnam', 'c_plgfnam')
register('gfont', 'c_plgfont')
register('glevel', 'c_plglevel')
register('gpage', 'c_plgpage')
register('gra', 'c_plgra')
register('gradient', 'c_plgradient')
register('griddata', 'c_plgriddata')
register('gspa', 'c_plgspa')
register('gstrm', 'c_plgstrm')
register('gver', 'c_plgver')
register('gvpd', 'c_plgvpd')
register('gvpw', 'c_plgvpw')
register('gxax', 'c_plgxax')
register('gyax', 'c_plgyax')
register('gzax', 'c_plgzax')
register('hist', 'c_plhist')
register('hlsrgb', 'c_plhlsrgb')
register('init', 'c_plinit')
register('join', 'c_pljoin')
register('lab', 'c_pllab')
register('legend', 'c_pllegend')
register('colorbar', 'c_plcolorbar')
register('lightsource', 'c_pllightsource')
register('line', 'c_plline')
register('line3', 'c_plline3')
register('lsty', 'c_pllsty')
register('map', 'c_plmap')
register('meridians', 'c_plmeridians')
register('mesh', 'c_plmesh')
register('meshc', 'c_plmeshc')
register('mkstrm', 'c_plmkstrm')
register('mtex', 'c_plmtex')
register('mtex3', 'c_plmtex3')
register('ot3d', 'c_plot3d')
register('ot3dc', 'c_plot3dc')
register('ot3dcl', 'c_plot3dcl')
register('pat', 'c_plpat')
register('path', 'c_plpath')
register('poin', 'c_plpoin')
register('poin3', 'c_plpoin3')
register('poly3', 'c_plpoly3')
register('prec', 'c_plprec')
register('psty', 'c_plpsty')
register('ptex', 'c_plptex')
register('ptex3', 'c_plptex3')
register('randd', 'c_plrandd')
register('replot', 'c_plreplot')
register('rgbhls', 'c_plrgbhls')
register('schr', 'c_plschr')
register('scmap0', 'c_plscmap0')
register('scmap0a', 'c_plscmap0a')
register('scmap0n', 'c_plscmap0n')
register('scmap1', 'c_plscmap1')
register('scmap1a', 'c_plscmap1a')
register('scmap1l', 'c_plscmap1l')
register('scmap1la', 'c_plscmap1la')
register('scmap1n', 'c_plscmap1n')
register('scmap1_range', 'c_plscmap1_range')
register('gcmap1_range', 'c_plgcmap1_range')
register('scol0', 'c_plscol0')
register('scol0a', 'c_plscol0a')
register('scolbg', 'c_plscolbg')
register('scolbga', 'c_plscolbga')
register('scolor', 'c_plscolor')
register('scompression', 'c_plscompression')
register('sdev', 'c_plsdev')
register('sdidev', 'c_plsdidev')
register('sdimap', 'c_plsdimap')
register('sdiori', 'c_plsdiori')
register('sdiplt', 'c_plsdiplt')
register('sdiplz', 'c_plsdiplz')
register('seed', 'c_plseed')
register('sesc', 'c_plsesc')
register('sfam', 'c_plsfam')
register('sfci', 'c_plsfci')
register('sfnam', 'c_plsfnam')
register('sfont', 'c_plsfont')
register('shade', 'c_plshade')
register('shade1', 'c_plshade1')
register('shades', 'c_plshades')
register('slabelfunc', 'c_plslabelfunc')
register('smaj', 'c_plsmaj')
register('smem', 'c_plsmem')
register('smema', 'c_plsmema')
register('smin', 'c_plsmin')
register('sdrawmode', 'c_plsdrawmode')
register('sori', 'c_plsori')
register('spage', 'c_plspage')
register('spal0', 'c_plspal0')
register('spal1', 'c_plspal1')
register('spause', 'c_plspause')
register('sstrm', 'c_plsstrm')
register('ssub', 'c_plssub')
register('ssym', 'c_plssym')
register('star', 'c_plstar')
register('start', 'c_plstart')
register('stransform', 'c_plstransform')
register('string', 'c_plstring')
register('string3', 'c_plstring3')
register('stripa', 'c_plstripa')
register('stripc', 'c_plstripc')
register('stripd', 'c_plstripd')
register('imagefr', 'c_plimagefr')
register('image', 'c_plimage')
register('styl', 'c_plstyl')
register('surf3d', 'c_plsurf3d')
register('surf3dl', 'c_plsurf3dl')
register('svect', 'c_plsvect')
register('svpa', 'c_plsvpa')
register('sxax', 'c_plsxax')
register('syax', 'c_plsyax')
register('sym', 'c_plsym')
register('szax', 'c_plszax')
register('text', 'c_pltext')
register('timefmt', 'c_pltimefmt')
register('vasp', 'c_plvasp')
register('vect', 'c_plvect')
register('vpas', 'c_plvpas')
register('vpor', 'c_plvpor')
register('vsta', 'c_plvsta')
register('w3d', 'c_plw3d')
register('wid', 'c_plwid')
register('width', 'c_plwidth')
register('wind', 'c_plwind')
register('xormod', 'c_plxormod')
register('setopt', 'c_plsetopt')
register('parseopts', 'c_plparseopts')
register('cmd', 'pl_cmd')
register('plend', 'c_plend')

register('ESC_DOUBLEBUFFERING_ENABLE', 'PLESC_DOUBLEBUFFERING_ENABLE')
register('ESC_DOUBLEBUFFERING_DISABLE', 'PLESC_DOUBLEBUFFERING_DISABLE')
register('ESC_DOUBLEBUFFERING_QUERY', 'PLESC_DOUBLEBUFFERING_QUERY')
register('ESC_SET_RGB', 'PLESC_SET_RGB')
register('ESC_ALLOC_NCOL', 'PLESC_ALLOC_NCOL')
register('ESC_SET_LPB', 'PLESC_SET_LPB')
register('ESC_EXPOSE', 'PLESC_EXPOSE')
register('ESC_RESIZE', 'PLESC_RESIZE')
register('ESC_REDRAW', 'PLESC_REDRAW')
register('ESC_TEXT', 'PLESC_TEXT')
register('ESC_GRAPH', 'PLESC_GRAPH')
register('ESC_FILL', 'PLESC_FILL')
register('ESC_DI', 'PLESC_DI')
register('ESC_FLUSH', 'PLESC_FLUSH')
register('ESC_EH', 'PLESC_EH')
register('ESC_GETC', 'PLESC_GETC')
register('ESC_SWIN', 'PLESC_SWIN')
register('ESC_DOUBLEBUFFERING', 'PLESC_DOUBLEBUFFERING')
register('ESC_XORMOD', 'PLESC_XORMOD')
register('ESC_SET_COMPRESSION', 'PLESC_SET_COMPRESSION')
register('ESC_CLEAR', 'PLESC_CLEAR')
register('ESC_DASH', 'PLESC_DASH')
register('ESC_HAS_TEXT', 'PLESC_HAS_TEXT')
register('ESC_IMAGE', 'PLESC_IMAGE')
register('ESC_IMAGEOPS', 'PLESC_IMAGEOPS')
register('ESC_PL2DEVCOL', 'PLESC_PL2DEVCOL')
register('ESC_DEV2PLCOL', 'PLESC_DEV2PLCOL')
register('ESC_SETBGFG', 'PLESC_SETBGFG')
register('ESC_DEVINIT', 'PLESC_DEVINIT')
register('ESC_GETBACKEND', 'PLESC_GETBACKEND')
register('ESC_BEGIN_TEXT', 'PLESC_BEGIN_TEXT')
register('ESC_TEXT_CHAR', 'PLESC_TEXT_CHAR')
register('ESC_CONTROL_CHAR', 'PLESC_CONTROL_CHAR')
register('ESC_END_TEXT', 'PLESC_END_TEXT')
register('ESC_START_RASTERIZE', 'PLESC_START_RASTERIZE')
register('ESC_END_RASTERIZE', 'PLESC_END_RASTERIZE')
register('ESC_ARC', 'PLESC_ARC')
register('ESC_GRADIENT', 'PLESC_GRADIENT')
register('ESC_MODESET', 'PLESC_MODESET')
register('ESC_MODEGET', 'PLESC_MODEGET')

register('HIST_NOSCALING', 'PL_HIST_NOSCALING')
register('HIST_IGNORE_OUTLIERS', 'PL_HIST_IGNORE_OUTLIERS')
register('HIST_NOEXPAND', 'PL_HIST_NOEXPAND')
register('HIST_NOEMPTY', 'PL_HIST_NOEMPTY')
register('HIST_DEFAULT', 'PL_HIST_DEFAULT')
register('LEGEND_NONE', 'PL_LEGEND_NONE')
register('LEGEND_COLOR_BOX', 'PL_LEGEND_COLOR_BOX')
register('LEGEND_LINE', 'PL_LEGEND_LINE')
register('LEGEND_SYMBOL', 'PL_LEGEND_SYMBOL')
register('LEGEND_TEXT_LEFT', 'PL_LEGEND_TEXT_LEFT')
register('LEGEND_BACKGROUND', 'PL_LEGEND_BACKGROUND')
register('LEGEND_BOUNDING_BOX', 'PL_LEGEND_BOUNDING_BOX')
register('LEGEND_ROW_MAJOR', 'PL_LEGEND_ROW_MAJOR')
register('POSITION_LEFT', 'PL_POSITION_LEFT')
register('POSITION_RIGHT', 'PL_POSITION_RIGHT')
register('POSITION_TOP', 'PL_POSITION_TOP')
register('POSITION_BOTTOM', 'PL_POSITION_BOTTOM')
register('POSITION_INSIDE', 'PL_POSITION_INSIDE')
register('POSITION_OUTSIDE', 'PL_POSITION_OUTSIDE')
register('POSITION_VIEWPORT', 'PL_POSITION_VIEWPORT')
register('POSITION_SUBPAGE', 'PL_POSITION_SUBPAGE')

return pl
