export PLATFORM=photon
export APP=photon-force

all:
	$(MAKE) -C ../photon-firmware/main

install: all
	$(MAKE) -C ../photon-firmware/main program-dfu
