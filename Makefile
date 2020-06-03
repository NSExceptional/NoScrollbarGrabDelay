export TARGET = iphone:latest:9.0
export ARCHS = arm64 armv7s arm64e
include $(THEOS)/makefiles/common.mk

#SOURCES := $(wildcard Folder/*.m)

TWEAK_NAME = NoScrollbarGrabDelay
NoScrollbarGrabDelay_FILES = Tweak.xm
NoScrollbarGrabDelay_CFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

before-stage::
