# pg_config needs to tell me where the 'include directory' is
PG_CONFIG := $(shell which pg_config)
ifeq ('PG_CONFIG',)
$(error You must have PostgreSQL development libraries installed! (on Ubuntu/Debian, try apt-get install postgresql-server-dev-9.5))
endif

LIBDIR := $(shell ${PG_CONFIG} --pkglibdir)
INSTALLED_LIB := ${LIBDIR}/gp.so
CFLAGS += -I$(shell ${PG_CONFIG} --includedir-server)

.PHONY: install uninstall clean

gp.so: gp.o
	$(CC) -o $@ -shared $<

gp.o: gp.c
	${CC} -c -O3 -fPIC ${CFLAGS} $< -o $@

install: ${INSTALLED_LIB}

${INSTALLED_LIB}: gp.so
	cp -f $< $@

uninstall:
	${RM} ${INSTALLED_LIB}

clean:
	${RM} gp.so gp.o
