.PHONY: all clean

all: fs.img

clean:
	( ./umount.sh; exit 0 )
	rm -rf image
	rm fs.img

fs.img:
	scripts/make_loop.sh
	./mount.sh	
	./populate-image.sh
	./umount.sh

