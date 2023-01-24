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
Device="z3s"                                                                                         #<--- Set Device Codename here
OEM="samsung"                                                                                        #<--- Set Device Manufactor here
DeviceTree="https://github.com/Nico170420/android_device_samsung_z3s.git"                            #<--- Put Device Tree Link here
DT-Branch="shrp"                                                                                     #<--- Set the DT Branch Name here

# Cloning the Device Tree
git clone ${DeviceTree} -b ${DT-Branch} device/${OEM}/${Device}
