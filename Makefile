JSONLIB = \
		-L/usr/local/lib \
		-ljsoncpp \
		-I/usr/include/jsoncpp \


all:
	${CXX} test_1.cpp -o test_file $(shell pkg-config --cflags --libs jsoncpp)

install:
	cp test_file /usr/bin

clean:
	rm -rf test_file
