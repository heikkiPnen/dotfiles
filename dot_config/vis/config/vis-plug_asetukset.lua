local M = {}

M.plug = require('plugins/vis-plug')
M.plug.path('/home/heikki/.local/share/vis-plug')

 M.plugins = {
  {'erf/vis-sneak'},
  {'https://git.sr.ht/~mcepl/vis-fzf-open'},
  {'https://github.com/roguh.vis-copypasta'},
  {'samlwood/vis-gruvbox.git', theme = true, file = 'gruvbox'}, 
--{'git@github.com:fischerling/vis-lspc.git'},
}

M.plug.init(M.plugins, true)
M.plugin_vis_open = require('plugins/vis-fzf-open')
-- Path to the fzf executable (default: "fzf")
M.plugin_vis_open.fzf_path = (
    "FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix ' fzf"
)

return M
