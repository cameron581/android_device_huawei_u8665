USE_CAMERA_STUB := false

-include vendor/huawei/u8815/BoardConfigVendor.mk

# CPU and Platform
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := false

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon

# cortex-a9 is used to take advantage of NEON optimizations
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon

BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Optimisations used by Qualcomm
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

TARGET_USES_ION := false

TARGET_BOOTLOADER_BOARD_NAME := u8815
TARGET_OTA_ASSERT_DEVICE := u8815,hwu8815,u8818,hwu8818

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8815/include

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8815

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/u8815/ril/

# Graphics
COMMON_GLOBAL_CFLAGS += -DANCIENT_GL
BOARD_EGL_CFG := device/huawei/u8815/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_USE_SKIA_LCDTEXT := true
TARGET_NO_HW_OVERLAY := true
TARGET_QCOM_DISPLAY_VARIANT := legacy

# Video
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS -DQCOM_LEGACY_OMX -DQCOM_NO_SECURE_PLAYBACK

# Web Rendering
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/u8815/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/huawei/u8815/bluetooth/vnd_u8815.txt

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4330
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Wi-Fi
BOARD_WLAN_DEVICE := bcmdhd
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_LEGACY_NL80211_STA_EVENTS := true
WIFI_DRIVER_FW_PATH_AP := "/system/etc/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/fw_4330_b2.bin nvram_path=/system/etc/nvram_4330.txt"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"

TARGET_CUSTOM_WIFI := ../../device/huawei/u8815/libhardware_legacy/wifi/wifi.c

# Kernel 
TARGET_KERNEL_SOURCE := kernel/huawei/u8815
TARGET_KERNEL_CONFIG := cyanogenmod_u8815_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 2048

# Recovery
#BOARD_TOUCH_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u8815/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8815/recovery/recovery-keys.c
TARGET_RECOVERY_INITRC := device/huawei/u8815/recovery/etc/init.rc
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Partitions
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 183500800
BOARD_FLASH_BLOCK_SIZE := 131072
