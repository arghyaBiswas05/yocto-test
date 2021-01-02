JSONLIB = \
		-L/usr/local/lib \
		-ljsoncpp \
		-I/usr/include/jsoncpp \
		-I/usr/include/json


all:
	${CXX} -O test_1.cpp -o test_file ${JSONLIB}

install:
	cp test_file /usr/bin

clean:
	rm -rf test_file
