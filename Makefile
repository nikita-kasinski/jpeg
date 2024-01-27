INCLUDE=-Iinclude
CPPFLAGS=$(INCLUDE) -Wall -Wextra -Wpedantic -Wconversion
EXEC=bin/jpegdump
obj=obj/main.o obj/jpeg_reader.o
build: dirs $(EXEC)
run: dirs $(EXEC)
	./$(EXEC)
$(EXEC): $(obj)
	g++ $(CPPFLAGS) $(obj) -o $(EXEC)
obj/%.o: src/%.cpp
	g++ $(CPPFLAGS) -c $< -o $@
clean:
	-rm obj/*
	-rm bin/*
dirs:
	-mkdir -p bin obj