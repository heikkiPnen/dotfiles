import pynvim
from oiko import Oiko
#o=Oiko

@pynvim.plugin
class Main(object):
    def __init__(self, vim):
        self.vim = vim
        self.oiko = Oiko()

    @pynvim.function('DoItPython')
    def doItPython(self, args):
        self.vim.command('echo "hello from DoItPython"')

    @pynvim.function('OikoLue')
    def oikoLue(self, args):
        self.oiko.teksti = self.vim.current.buffer
        self.oikolue_teksti()

    @pynvim.function('OikoLue_i')
    def oikolue_lisatty(self, args):
        self.oiko.teksti = self.vim.funcs.getreg('.')
        self.oikolue_teksti()


    def oikolue_teksti(self):
        self.vim.command("highlight Sanat ctermbg=red guibg=red")
        virheet = self.oiko.tekstin_typot()
        #for v in virheet:
        cmd = "match Sanat /"+virheet+"/"
        self.vim.command(cmd)
        zz = 'echo '+'"'+str(dir(self.oiko.teksti))+'"'
        self.vim.command(zz)


