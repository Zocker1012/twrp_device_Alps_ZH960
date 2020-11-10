$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/alps/zh960/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := zh960
PRODUCT_NAME := omni_zh960
PRODUCT_BRAND := alps
PRODUCT_MODEL := zh960
PRODUCT_MANUFACTURER := alps

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="alps/zh960/zh960:4.4.2/KOT49H/1542356133:user/release-keys" \
    PRIVATE_BUILD_DESC="zh960-user 4.4.2 KOT49H vEN0007 release-keys"

