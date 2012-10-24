#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The LiquidSmooth Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel

# overlay
DEVICE_PACKAGE_OVERLAYS += device/asus/tf101/overlay

# vendor
$(call inherit-product-if-exists, vendor/asus/tf101/tf101-vendor.mk)

# firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/nvram_4329.txt:system/etc/nvram_4329.txt \
    $(LOCAL_PATH)/prebuilt/etc/bluetooth/bdaddr:system/etc/bluetooth/bdaddr \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/fw_bcmdhd.bin:system/vendor/firmware/fw_bcmdhd.bin \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/fw_bcmdhd_p2p.bin:system/vendor/firmware/fw_bcmdhd_p2p.bin \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/fw_bcmdhd_apsta.bin:system/vendor/firmware/fw_bcmdhd_apsta.bin \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/BCM4329B1_002.002.023.0797.0863.hcd:system/etc/firmware/BCM4329B1_002.002.023.0797.0863.hcd

# hardware
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# idc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/panjit_touch.idc:system/usr/idc/panjit_touch.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/elantech_touchscreen.idc:system/usr/idc/elantech_touchscreen.idc

# ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/fstab.ventana:root/fstab.ventana \
    $(LOCAL_PATH)/ramdisk/init.ventana.rc:root/init.ventana.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.ventana.rc:root/ueventd.ventana.rc \
    $(LOCAL_PATH)/ramdisk/init.ventana.usb.rc:root/init.ventana.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.ventana.keyboard.rc:root/init.ventana.keyboard.rc

# keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/asusec.kcm:system/usr/keychars/asusec.kcm

# TODO: Include key-chars and key-layout files if necessary

# keylayout
$(call inherit-product, $(LOCAL_PATH)/keychars/l10n/l10n.mk)
$(call inherit-product, $(LOCAL_PATH)/keylayout/l10n/l10n.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/asusec.kl:system/usr/keylayout/asusec.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# prebuilt
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/sbin/keyswap::root/sbin/keyswap \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/bin/wifimacwriter:system/bin/wifimacwriter \
    $(LOCAL_PATH)/prebuilt/etc/gps/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    $(LOCAL_PATH)/prebuilt/data/srs_processing.cfg:system/data/srs_processing.cfg

# wireless
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/nvram.txt:system/etc/nvram.txt \
    $(LOCAL_PATH)/prebuilt/etc/nvram_nh615.txt:system/etc/nvram_nh615.txt \
    $(LOCAL_PATH)/prebuilt/etc/nvram_murata.txt:system/etc/nvram_murata.txt \
    $(LOCAL_PATH)/prebuilt/etc/nvram_nh615_sl101.txt:system/etc/nvram_nh615_sl101.txt

 # gsm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/libhuawei-ril.so:system/lib/libhuawei-ril.so \
    $(LOCAL_PATH)/prebuilt/etc/init.d/02ppp.sh:system/etc/init.d/02ppp.sh \
    $(LOCAL_PATH)/prebuilt/etc/ppp/peers/gprs:system/etc/ppp/peers/gprs

 # gsm2
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/ppp/peers/pppd-ril.options:system/etc/ppp/peers/pppd-ril.options	\
    $(LOCAL_PATH)/prebuilt/etc/ppp/chap-secrets:system/etc/ppp/chap-secrets	  	

# gsm3
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/ppp/gprs-connect-chat:system/etc/ppp/gprs-connect-chat \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-down:system/etc/ppp/ip-down  	

# gsm4
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-down-HUAWEI:system/etc/ppp/ip-down-HUAWEI \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-up:system/etc/ppp/ip-up \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-up-HUAWEI:system/etc/ppp/ip-up-HUAWEI \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-up-vpn:system/etc/ppp/ip-up-vpn \
    $(LOCAL_PATH)/prebuilt/etc/ppp/options.huawei:system/etc/ppp/options.huawei \
    $(LOCAL_PATH)/prebuilt/etc/ppp/pap-secrets:system/etc/ppp/pap-secrets

# tablet
PRODUCT_CHARACTERISTICS := tablet

# type
PRODUCT_TAGS += dalvik.gc.type-precise

# packages
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    audio.a2dp.default \
    libaudioutils \
    libinvensense_mpl \
    blobpack_tf \
    mischelp \
    libaudioutils \
    tinymix \
    tinyplay \
    tinyrec \
    audio.primary.ventana \
    com.cyanogenmod.asusec \
    libasusec_jni

# override
PRODUCT_PROPERTY_OVERRIDES := \
    ro.wifi.country=EU \
    wifi.interface=wlan0 \
    ro.sf.lcd_density=160 \
    ro.opengles.version=131072 \
    dalvik.vm.dexopt-data-only=1 \
	persist.sys.usb.config=mtp,adb \
    wifi.supplicant_scan_interval=180