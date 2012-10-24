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

# device
$(call inherit-product, device/asus/tf101/full_tf101.mk)

# tablet
$(call inherit-product, vendor/cm/config/common_tablet_gsm.mk)

# product
PRODUCT_DEVICE := tf101
PRODUCT_BRAND := asus
PRODUCT_NAME := cm_tf101
PRODUCT_MODEL := Transformer Pad
PRODUCT_MANUFACTURER := Asus
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=cm.tf101.$(shell date +%m%d%y).$(shell date +%H%M%S)

# languages
# PRODUCT_LOCALES := en_US en_GB fr_FR it_IT de_DE es_ES - these are ADP1 values
PRODUCT_LOCALES := en_US fr_FR it_IT es_ES de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN ug_CN
# - this is the whole fun!

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=US_epad-9.2.1.11-20120221 \
    PRODUCT_NAME=EeePad \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="US_epad-user 4.0.3 IML74K US_epad-9.2.1.11-20120221 release-keys" \
    BUILD_FINGERPRINT="asus/US_epad/EeePad:4.0.3/IML74K/US_epad-9.2.1.11-20120221:user/release-keys"

