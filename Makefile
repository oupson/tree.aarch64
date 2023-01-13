all: bin/tree

.phony: all clean

obj/%.o: src/%.S
	mkdir -p obj
	clang -o $@ -c $^

bin/tree: obj/main.o
	mkdir -p bin
	ld.lld -o $@ $^

clean:
	rm -rf bin obj
