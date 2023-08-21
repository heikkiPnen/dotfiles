require('vis')

--local plug = require('plugins/vis-plug')
--plug.init(plugins, true)
--plug.path('/home/heikki/.local/share/vis-plug')
--
--local plugins = {
--  {'erf/vis-sneak'},
--  {'~mcepl/vis-fzf-open'},
--  {'samlwood/vis-gruvbox.git', theme = true, file = 'gruvbox'}, 
--}

--plugin_vis_open = require('plugins/vis-fzf-open')
require('plugins/vis-sneak')

-- Path to the fzf executable (default: "fzf")
--plugin_vis_open.fzf_path = (
--    "FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix ' fzf"
--)


vis.events.subscribe(vis.events.INIT, function()
	--global configuration--
	vis:command('set change-256colors off') --see vis#613
    vis:command('set theme gruvbox')

	--keyboard shortcuts--
	vis:command('map insert <C-s> <Escape>:w<Enter>')
	vis:command('map normal <C-s> :w<Enter>')
	vis:command('map! insert <M-C-h> <Escape>dbi')
end)
