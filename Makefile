.PHONY: page

page: public/WelcomeVisitors/index.html public/VariousTopics/index.html

public/%/index.html: page/%.md
	mkdir -p `dirname $@`
	echo "<html><head><title>" `basename $<` "</title></head><body>" > $@
	wikirender $< >> $@
	echo "</body></html>" >> $@

