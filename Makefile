
PELICAN=/usr/bin/env pelican
PELICANOPTS=None

BASEDIR=$(PWD)
INPUTDIR=$(BASEDIR)/home
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelican.conf.py
THEME=pelican-elegant


SSH_HOST=web 
SSH_TARGET_DIR=markbetnel.com/sngn


help:
	@echo 'Makefile for a pelican Web site                                       '
	@echo '                                                                      '
	@echo 'Usage:                                                                '
	@echo '   make clean                       remove the generated files        '
	@echo '   make all                         html ssh_upload                   '
	@echo '   make html                        (re)generate the web site         '
	@echo '   ssh_upload                       upload the web site using SSH     '
	@echo '                                                                      '

all: html ssh_upload git wc

wc: 
	./wc.sh
	./cc.sh

html: clean $(OUTPUTDIR)/index.html
	@echo 'Done'

git:
	git status
	@echo 'COMMIT CHANGES TO THE REPO!!!!!'

$(OUTPUTDIR)/%.html:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) -t $(THEME)


clean:
	rm -fr $(OUTPUTDIR)
	mkdir $(OUTPUTDIR)


ssh_upload: $(OUTPUTDIR)/index.html
	scp -r $(OUTPUTDIR)/* web:$(SSH_TARGET_DIR)


.PHONY: html help clean ftp_upload ssh_upload dropbox_upload github
    
