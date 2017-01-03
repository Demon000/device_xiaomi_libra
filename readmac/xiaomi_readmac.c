/*
 * Copyright (C) 2016 The CyanogenMod Project
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

//#define LOG_NDEBUG 0

#define LOG_TAG "xiaomi_readmac"

#include <string.h>
#include <cutils/log.h>
#include <cutils/properties.h>

#define MAC_ADDR_SIZE    6
#define WLAN_MAC_BIN     "/data/misc/wifi/wlan_mac.bin"
#define DRIVER_PROP_NAME "wlan.driver.status"

int qmi_nv_read_wlan_mac(uint8_t **mac);

int main(void)
{
    uint8_t *mac_addr = NULL;
    uint8_t zeromac[MAC_ADDR_SIZE] = {0};
    FILE *fp;

    // read mac from modem
    qmi_nv_read_wlan_mac(&mac_addr);
    if (!mac_addr || !memcmp(mac_addr, zeromac, MAC_ADDR_SIZE)) {
        ALOGE("qmi_nv_read_wlan_mac error");
        return 1;
    }

    // generate mac file
    fp = fopen(WLAN_MAC_BIN, "w");
    fprintf(fp, "Intf0MacAddress=%02X%02X%02X%02X%02X%02X\n",
            mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3], mac_addr[4], mac_addr[5]);
    fprintf(fp, "Intf1MacAddress=%02X%02X%02X%02X%02X%02X\n",
            mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3], mac_addr[4], mac_addr[5]+1);
    fprintf(fp, "END\n");
    fclose(fp);

    // notify wifi service of our success
    property_set(DRIVER_PROP_NAME, "ok");

    return 0;
}
