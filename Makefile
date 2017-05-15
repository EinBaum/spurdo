all: spurdo

spurdo: main.o libspurdoxx/libspurdoxx.o
	g++ main.o libspurdoxx/libspurdoxx.o -o spurdo -std=c++11 -Os -Wall

main.o:
	g++ -c main.cpp -o main.o

libspurdoxx/libspurdoxx.o:
	make -C libspurdoxx

install: spurdo
	cp spurdo /usr/local/bin/spurdo

uninstall:
	rm /usr/local/bin/spurdo

clean:
	make clean -C libspurdoxx
	rm main.o
	rm spurdo
