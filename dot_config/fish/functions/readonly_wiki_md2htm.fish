function wiki_md2htm 
    cd ~/Dokumentit
    for d in (fd -t d -E html)
        set uusi_dir (string join / . html $d)
        if test ! -d $uusi_dir
            mkdir -p $uusi_dir
            echo "$uusi_dir"
        end
    end
    for t in (fd -t f -e md)
        set uusi_t ( string join / . html (string replace -r '.md$' '.html' $t)) 
        #echo $t "->" $uusi_t
        pandoc --verbose -f markdown -t html -o $uusi_t $t
        #sed -i 's:\(<a href="\)\([^>]*\)\(">.*</a>\):\1\2\.html\3:' $uusi_t  
        # Lisätään .html pääte linkkitiedoston nimeen
        sed  -e 's:<\(a href="\)\([^"]*\):\1\2.html">:g' -e 's:html\.html:html:g' $uusi_t
    end

end

