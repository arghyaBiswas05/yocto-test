JSONLIB = \
		-L${DESTDIR}/usr/local/lib \
		-ljsoncpp \
		-I${DESTDIR}/usr/include/jsoncpp \
		-I${DESTDIR}/usr/include/json


all:
	${CXX} ${CXXFLAGS} -O test_1.cpp -o test_file ${LDFLAGS} ${JSONLIB}

install:
	cp test_file ${DESTDIR}/usr/bin

clean:
	rm -rf test_file
