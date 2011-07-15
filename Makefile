CWD=`pwd`

build:
	# I wish there was a better way to do this
	@mkdir -p ${HOME}/.plt-scheme/4.2.1/collects
	@ln -fs ${CWD}/src/scheme/waxeye ${HOME}/.plt-scheme/4.2.1/collects
	./build/unix

.PHONY:build
