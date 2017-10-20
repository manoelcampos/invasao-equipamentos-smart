all: 
	bundle exec asciidoctor-revealjs "slides.adoc" -o slides.html

install:
	#Install bundler, that in turn downloads Ruby dependencies inside the Gemfile: http://bundler.io
	sudo gem install bundler -n /usr/local/bin
	#Asciidoctor Reveal.js Configurations
	bundle config --local github.https true
	bundle --path=.bundle/gems --binstubs=.bundle/.bin
	#Install build dependencies using Bundler
	bundler