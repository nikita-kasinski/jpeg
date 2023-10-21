INCLUDE=-Iinclude
CPPFLAGS=$(INCLUDE)
EXEC=bin/main
obj=obj/main.o obj/FileBinaryReader.o
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