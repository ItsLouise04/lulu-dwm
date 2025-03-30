VERSION = 6.5
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man
X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2
the alpha patch and the winicon patch (BAR_ALPHA_PATCH, BAR_WINICON_PATCH)
XRENDER = -lXrender
XCBLIBS = -lX11-xcb -lxcb -lxcb-res
INCS = -I${X11INC} -I${FREETYPEINC} ${YAJLINC} ${PANGOINC} ${BDINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS}  ${XRENDER} ${MPDCLIENT} ${XEXTLIB} ${XCBLIBS} ${KVMLIB} ${PANGOLIB} ${YAJLLIBS} ${IMLIB2LIBS} $(BDLIBS)
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700L -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -Wno-unused-function -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS}
LDFLAGS  = ${LIBS}
CC = cc
