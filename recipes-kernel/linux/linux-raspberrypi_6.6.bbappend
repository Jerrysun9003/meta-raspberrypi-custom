FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:remove:raspberrypi4-64-custom = "git://github.com/raspberrypi/linux.git;name=machine;branch=${LINUX_RPI_BRANCH};protocol=https"
SRC_URI:prepend:raspberrypi4-64-custom = "git://github.com/jerrysun0303/linux-raspberrypi-custom.git;name=machine;branch=${LINUX_RPI_BRANCH};protocol=https"
SRC_URI:append:raspberrypi4-64-custom = " file://0001-Print-message-on-Raspberry-Pi-kernel-boot.patch"


LINUX_VERSION:raspberrypi4-64-custom ?= "6.6.47"
LINUX_RPI_BRANCH:raspberrypi4-64-custom ?= "rpi-custom-6.6.y"
SRCREV_machine:raspberrypi4-64-custom = "697d9b94609dc9a6755b1ff75673a7f39567bdb9"

RPI_KERNEL_DEVICETREE = "broadcom/bcm2711-rpi-4-b-custom.dtb"
KBUILD_DEFCONFIG:raspberrypi4-64-custom ?= "bcm2711_custom_defconfig"
