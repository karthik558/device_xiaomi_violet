/*
 * Copyright (C) 2020 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <fcntl.h>
#include <unistd.h>

#include "power-feature.h"

#include <hardware/power.h>
#include <linux/input.h>
#include <log/log.h>

void set_device_specific_feature(feature_t feature, int state) {
    switch (feature) {
        case POWER_FEATURE_DOUBLE_TAP_TO_WAKE: {
            int fd = open(TAP_TO_WAKE_EVENT_NODE, O_WRONLY);
            struct input_event ev;
            ev.type = EV_SYN;
            ev.code = SYN_CONFIG;
            ev.value = state ? INPUT_EVENT_WAKUP_MODE_ON : INPUT_EVENT_WAKUP_MODE_OFF;
            write(fd, &ev, sizeof(ev));
            close(fd);
        }
    }
}
