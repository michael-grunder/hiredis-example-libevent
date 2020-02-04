OPT?=-O2

all:
	cc $(OPT) -ggdb example.c -lhiredis -levent -ohiredis-example

debug:
	$(MAKE) OPT="-O0"

clean:
	rm -rf *.o *.lo hiredis-example hiredis

static:
	cc $(OPT) -ggdb example.c /usr/local/lib/libhiredis.a -levent -ohiredis-example

get-hiredis:
	git clone https://github.com/redis/hiredis.git
	make -C hiredis install && rm -rf hiredis

docker:
	docker build .
