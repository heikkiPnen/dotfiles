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

    @pynvim.function('Testi')
    def testi(self, args):
        self.oiko.puskuri = self.vim.current.buffer
        self.vim.command("highlight Sanat ctermbg=red guibg=red")
        virheet = self.oiko.puskurin_typot()
        #for v in virheet:
        cmd = "match Sanat /"+virheet+"/"
        self.vim.command(cmd)


