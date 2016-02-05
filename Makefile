export PLATFORM=photon
export APP=photon-force

all:
	$(MAKE) -C ../photon-firmware

install: all
	cd ../photon-firmware && particle flash NAME build/target/user-part/platform-6-m/photon-force.bin
