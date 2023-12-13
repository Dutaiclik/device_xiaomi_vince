#
# Copyright (C) 2021 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# All components inherited here go to system_ext image
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from vince device
$(call inherit-product, device/xiaomi/vince/device.mk)

# Inherit extra stuff
$(call inherit-product-if-exists, packages/apps/ViPER4AndroidFX/config.mk)

# Inherit some common Spark-OS stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Superior flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_MATLOG := false
TARGET_INCLUDE_PIXEL_CHARGER := true
USE_MOTO_CALCULATOR := true
TARGET_SUPPORTS_BLUR := true
SUPERIOR_UDFPS_ANIMATIONS := true
USE_MOTO_CLOCK := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
BUILD_WITH_GAPPS := false
TARGET_CORE_GMS := false
USE_QUICKPIC := true
USE_DUCKDUCKGO := false

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vince
PRODUCT_NAME := superior_vince
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5 Plus
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Maintainer
PRODUCT_SYSTEM_PROPERTIES += \
     ro.spos.maintainer=Underclock

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vince-user 8.1.0 OPM1.171019.019 V11.0.2.0.OEGMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/vince/vince:8.1.0/OPM1.171019.019/V11.0.2.0.OEGMIXM:user/release-keys"
