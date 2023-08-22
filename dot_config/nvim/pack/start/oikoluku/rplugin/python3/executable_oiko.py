#!/usr/bin/python
import libvoikko
import re
# import pynvim


class Oiko():

    def __init__(self):
        self.voikko = libvoikko.Voikko("fi-FI")
        self.__teksti = ''
        self.poista = re.compile('\.|,|:|;|\(|\)|')

    @property
    def teksti(self):
        return self.__teksti

    @teksti.setter
    def teksti(self, p):
        self.__teksti = p
    
    def korjaa_rivi(self, rivi):
        typot = set([sana  for sana in rivi.split() 
            if not self.voikko.spell(sana)])
        return typot

    def tekstin_typot(self):
        typot = set()
        for p in self.teksti:
            p_siivottu = self.poista.sub('',p)
            typot.update(self.korjaa_rivi(p_siivottu)) 
        return "\|".join(map(str,typot)) 

if __name__ == "__main__":
    o = Oiko()
    o.teksti = ['kisssa kissa kissalla koira koera', 'koera vesi voda vasi vaasi']
    for r in o.teksti:
        print(r)
    tulos = o.tekstin_typot()
    print(tulos)
