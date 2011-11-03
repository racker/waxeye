CWD=`pwd`

INSTALL_DIR=/usr/lib/waxeye/libexec
COLLECTS=${DESTDIR}/usr/lib/plt/waxeye/collects

build:
	# I wish there was a better way to do this
	@mkdir -p ${HOME}/.plt-scheme/4.2.1/collects
	@ln -fs ${CWD}/src/scheme/waxeye ${HOME}/.plt-scheme/4.2.1/collects
	./build/unix

install:
	mkdir -p ${DESTDIR}/${INSTALL_DIR}
	cp -R bin lib ${DESTDIR}/${INSTALL_DIR}
	mkdir -p ${COLLECTS}
	cp -R src/scheme/waxeye/* ${COLLECTS}
	mkdir -p ${DESTDIR}/usr/bin
	ln -s ${INSTALL_DIR}/bin/waxeye ${DESTDIR}/usr/bin/waxeye

.PHONY:build install
