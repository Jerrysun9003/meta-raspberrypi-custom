# Base this image on rpi-test-image
include recipes-core/images/rpi-test-image.bb

# IMAGE_FEATURES += "x11-base"
IMAGE_INSTALL:append = " xserver-xorg xinit xterm matchbox-wm xf86-video-fbdev"

IMAGE_INSTALL += "imagemagick"
