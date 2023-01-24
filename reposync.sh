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
Repo="https://github.com/SHRP/manifest.git"                                                         #<--- Change the wanted Repo here (Link to SHRP, PBRP or TWRP Manifest Link)
Branch="SHRP-12.1"                                                                                  #<--- Set Source Branch here (SHRP-12.1, android-12.1 for PBRP or twrp-12.1)

# Initialize Repo Manifest (SHRP/TWRP/PBRP)
repo init --depth=1 -u ${Repo} -b ${BRANCH}                                                    

# Sync Repo
repo sync -j$(nproc) --force-sync --no-clone-bundle --no-tags
repo sync --force-sync