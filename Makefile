EXEC=bin/main
obj=obj/main.o
build: dirs $(EXEC)
run: dirs $(EXEC)
	./$(EXEC)
$(EXEC): $(obj)
	g++ $(obj) -o $(EXEC)
obj/%.o: src/%.cpp
	g++ -c $< -o $@
clean:
	-rm obj/*
	-rm bin/*
dirs:
	-mkdir -p bin obj