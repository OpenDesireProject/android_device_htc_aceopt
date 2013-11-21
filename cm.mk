$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/htc/ace/device.mk)

PRODUCT_DEVICE := ace
PRODUCT_NAME := cm_ace
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT="htc_wwe/htc_ace/ace:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date +%Y%m%d%H%M%S):$(TARGET_BUILD_VARIANT)/test-keys" PRIVATE_BUILD_DESC="htc_ace-$(TARGET_BUILD_VARIANT) $(PLATFORM_VERSION) $(BUILD_ID) $(shell date +%Y%m%d%H%M%S) test-keys"

# Release Name
PRODUCT_RELEASE_NAME := ace

# Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
