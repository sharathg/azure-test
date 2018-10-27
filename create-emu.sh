#!/bin/bash -l
avdmanager create avd \
--device "Nexus 5" \
--package "system-images;android-23;google_apis;x86" \
--abi google_apis/x86 \
--name "Nexus5Emu"