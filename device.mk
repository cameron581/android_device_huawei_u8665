$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product, vendor/huawei/u8665/u8665-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8665/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Video
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.primary.u8665 \
    audio_policy.u8665 \
    audio.a2dp.default \
    audio.usb.default \
    libaudioutils

# Other HALs
PRODUCT_PACKAGES += \
    gps.u8665 \
    lights.u8665

# Other Packages
PRODUCT_PACKAGES += \
    libgenlock \
    setbtmac \
    setwifimac \
    dexpreopt \
    make_ext4fs \
    setup_fs \
    Torch \
    com.android.future.usb.accessory 

PRODUCT_COPY_FILES += \
    device/huawei/u8665/ramdisk/fstab.huawei:root/fstab.huawei \
    device/huawei/u8665/ramdisk/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8665/ramdisk/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/u8665/ramdisk/ueventd.huawei.rc:root/ueventd.huawei.rc

PRODUCT_COPY_FILES += \
    device/huawei/u8665/prebuilt/fw_4330_b2.bin:system/etc/fw_4330_b2.bin \
    device/huawei/u8665/prebuilt/BCM4330.hcd:system/etc/bluetooth/BCM4330.hcd \
    device/huawei/u8665/configs/nvram_4330.txt:system/etc/nvram_4330.txt \
    device/huawei/u8665/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8665/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/huawei/u8665/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/u8665/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8665/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/u8665/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/u8665/configs/libcm.sh:system/etc/libcm.sh

PRODUCT_COPY_FILES += \
    device/huawei/u8665/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8665/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/u8665/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/u8665/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/u8665/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/u8665/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8665/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8665/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/u8665/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml


PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := huawei_u8665
PRODUCT_DEVICE := u8665
PRODUCT_BRAND := Huawei
