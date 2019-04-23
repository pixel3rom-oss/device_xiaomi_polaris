#
# Copyright (C) 2018-2019 The LineageOS Project
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

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/polaris

# Kernel
TARGET_KERNEL_CONFIG := polaris_defconfig

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Power
TARGET_TAP_TO_WAKE_NODE := "/dev/input/event2"

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/fstab.qcom

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Inherit from the proprietary version
-include vendor/xiaomi/polaris/BoardConfigVendor.mk
