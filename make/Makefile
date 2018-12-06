.PHONY: clean
clean:
	rm -rf out

b:
	mkdir -p out/b
	javac b/src/main/java/com/artemzin/b/B.java -d out/b

a: b
	mkdir -p out/a
	javac -cp out/b a/src/main/java/com/artemzin/a/A.java -d out/a

myprogram: a
	mkdir -p out/myprogram
	javac -cp out/b:out/a myprogram/src/main/java/com/artemzin/MyProgram.java -d out/myprogram

run_my_program: myprogram
	java -cp out/b:out/a:out/myprogram com.artemzin.MyProgram
