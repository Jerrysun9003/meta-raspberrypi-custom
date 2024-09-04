do_deploy:append:raspberrypi4-64-custom() {
    echo  "device_tree=bcm2711-rpi-4-b-custom.dtb" >> $CONFIG
}
