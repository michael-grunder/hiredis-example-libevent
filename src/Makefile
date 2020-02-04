OPT?=-O2

all:
	g++ $(OPT) -ggdb example.cpp -lhiredis -levent -ohiredis-example

debug:
	$(MAKE) OPT="-O0"

clean:
	rm -rf *.o *.lo hiredis-example hiredis

static:
	g++ $(OPT) -ggdb example.cpp /usr/local/lib/libhiredis.a -levent -ohiredis-example

get-hiredis:
	git clone --single-branch --branch c-linkage https://github.com/redis/hiredis.git
	make -C hiredis install && rm -rf hiredis

docker:
	docker build .
