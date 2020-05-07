ssh jbacon@192.168.5.235 'test -d ~/svnserve_svnadmin || mkdir ~/svnserve_svnadmin'
rsync -avz . jbacon@192.168.5.235:svnserve_svnadmin
