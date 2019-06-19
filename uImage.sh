#!/bin/sh
	rm arch/arm/boot/dts/imx6q-sabresd.dtb
	rm arch/arm/boot/uImage
	make  imx6q-sabresd.dtb
	make  LOCALVERSION= LOADADDR=0x12000000 uImage -j2
#	cp arch/arm/boot/dts/imx6q-sabresd.dtb ./
	cp arch/arm/boot/dts/imx6q-sabresd.dtb /tftpboot
#	cp arch/arm/boot/uImage ./
	cp arch/arm/boot/uImage /tftpboot

