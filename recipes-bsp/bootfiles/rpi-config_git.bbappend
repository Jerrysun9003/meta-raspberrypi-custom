do_deploy:append:raspberrypi4-64-custom() {
    echo "device_tree=bcm2711-rpi-4-b-custom.dtb" >> $CONFIG

    echo "dtparam=act_led_trigger=default-on" >> $CONFIG
    echo "dtparam=act_led_activelow=off" >> $CONFIG
    echo "dtparam=pwr_led_trigger=none" >> $CONFIG
    echo "dtparam=pwr_led_activelow=off " >> $CONFIG
}
