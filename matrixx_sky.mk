# Inherit from device
$(call inherit-product, device/xiaomi/sky/device.mk)

# Inherit from Project Matrixx common config
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

PRODUCT_NAME := matrixx_sky
PRODUCT_DEVICE := sky
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 12 5G
PRODUCT_MANUFACTURER := Xiaomi
