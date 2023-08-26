require('vis')
require('config/vis-plug_asetukset')
local plug = require('plugins/vis-plug')
plug.path('/home/heikki/.local/share/vis-plug')


vis.events.subscribe(vis.events.INIT, function()
   --global configuration--
   vis:command('set change-256colors off') --see vis#613
   --vis:command('set theme gruvbox')

   --keyboard shortcuts--
   vis:command('map insert <C-s> <Escape>:w<Enter>')
   vis:command('map normal <C-s> :w<Enter>')
   vis:command('map! insert <M-C-h> <Escape>dbi')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    -- Your per window configuration options e.g.
    vis:command('set autoindent on')
    vis:command('set colorcolumn 80')
    vis:command('set cursorline')
    vis:command('set expandtab on')
    vis:command('set number')
    vis:command('set relativenumbers')
    vis:command('set show-spaces off')
    vis:command('set show-tabs on')
    vis:command('set tabwidth 4')
end)
