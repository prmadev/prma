twin := assets/input.css
twout := assets/output.css
twbuild := tailwindcss --input $(twin) --output $(twout) --minify
hugobuild := hugo
public := public
tarf := site.tar.gz
domain := prma.dev
browser:= firefox

zip:
	tar -C $(public) -cvz . > $(tarf)

rmzip:
	rm -f $(tarf)

rmpublic: 
	rm -rf $(public)

clean: rmzip rmpublic

twbuild:
	tailwindcss --input {{twin}} --output $(twout) --minify

hugobuild:
	$(hugobuild)

hutpublish:
	hut pages publish -d $(domain) $(tarf)

build: clean twbuild hugobuild

publish: build zip hutpublish clean    

runtw: 
	tailwindcss --input $(twin) --output $(twout) --watch
runhugo: 
	hugo serve -D --disableFastRender --navigateToChanged

