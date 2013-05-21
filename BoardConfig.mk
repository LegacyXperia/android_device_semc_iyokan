-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/iyokan/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_CONFIG := nAa_iyokan_defconfig

# Sensors
SOMC_CFG_SENSORS_ACCEL_BMA150_INPUT := yes
SOMC_CFG_SENSORS_PROXIMITY_APDS9700 := yes

TARGET_QCOM_HDMI_OUT := false

TARGET_OTA_ASSERT_DEVICE := MK16i,MK16a,iyokan

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/iyokan/bluedroid
