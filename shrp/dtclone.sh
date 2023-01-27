#!/usr/bin/env bash

#
# Copyright © 2023 Nico170420
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Variables
Device="RMX1851"                                                                                            #<--- Set Device Codename here
OEM="realme"                                                                                                #<--- Set Device Manufactor here
DeviceTree="https://github.com/U89-sk/android_device_realme_RMX1851-shrp"                                   #<--- Put Device Tree Link here
DTBranch="android-13.0"                                                                                     #<--- Set the DT Branch Name here

# Cloning the Device Tree
git clone ${DeviceTree} -b ${DTBranch} device/${OEM}/${Device}