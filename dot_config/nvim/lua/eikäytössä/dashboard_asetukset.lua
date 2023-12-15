local M = { 'glepnir/dashboard-nvim' }

M.config = function()
    local home = os.getenv('HOME')
    local db = require('dashboard')
    db.custom_header = {}
    db.custom_center = {
        { icon = '  ',
            desc = 'Edelliset tiedostot                     ',
            action = 'Telescope oldfiles',
            shortcut = '<leader> f o' },
        { icon = '  ',
            desc = 'Älykäs lajittelu                        ',
            action = 'Telescope frecency',
            shortcut = '<leader> f r' },
        { icon = '  ',
            desc = 'Etsi tiedosto                           ',
            action = 'Telescope find_files find_command=rg,--hidden,--files',
            shortcut = '<leader> f f' },
        { icon = '  ',
            desc = 'Vaihda hakemisto                        ',
            action = 'Telescope zoxide list',
            shortcut = '<leader> f z' },
        { icon = '  ',
            desc = 'Etsi sanoja                             ',
            action = 'Telescope live_grep',
            shortcut = '<leader> f w' },
        { icon = '  ',
            desc = 'Telescope näppäinlyhennykset            ',
            action = 'Telescope keymaps',
            shortcut = '<leader> f m' },
    }

end
return M
