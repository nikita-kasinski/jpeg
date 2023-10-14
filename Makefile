EXEC=main
obj=obj/main.o
build: $(EXEC)
run: $(EXEC)
	./$(EXEC)
$(EXEC): $(obj)
	g++ $(obj) -o $(EXEC)
obj/%.o: src/%.cpp
	g++ -c $< -o $@
clean:
	-rm obj/*
	-rm bin/*