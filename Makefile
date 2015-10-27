ARCHS = arm64 armv7
TARGET = iphone:clang:latest:latest

export THEOS_DEVICE_IP=192.168.101.247
export THEOS_DEVICE_PORT=22

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Facetact
FSVideoOnlyMessages_FILES = Tweak.xm
FSVideoOnlyMessages_PRIVATE_FRAMEWORKS = ChatKit
FSVideoOnlyMessages_FRAMEWORKS = MediaPlayer

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd; killall -9 MobileSMS"
