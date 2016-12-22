# Copyright 2016 The Android Open Source Project
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

# Qualcomm blob(s) necessary for Shamu hardware
PRODUCT_COPY_FILES := \
    vendor/qcom/libra/proprietary/ATFWD-daemon:system/bin/ATFWD-daemon:qcom \
    vendor/qcom/libra/proprietary/athdiag:system/bin/athdiag:qcom \
    vendor/qcom/libra/proprietary/btnvtool:system/bin/btnvtool:qcom \
    vendor/qcom/libra/proprietary/cnd:system/bin/cnd:qcom \
    vendor/qcom/libra/proprietary/cnss-daemon:system/bin/cnss-daemon:qcom \
    vendor/qcom/libra/proprietary/cnss_diag:system/bin/cnss_diag:qcom \
    vendor/qcom/libra/proprietary/diag_klog:system/bin/diag_klog:qcom \
    vendor/qcom/libra/proprietary/diag_mdlog:system/bin/diag_mdlog:qcom \
    vendor/qcom/libra/proprietary/diag_qshrink4_daemon:system/bin/diag_qshrink4_daemon:qcom \
    vendor/qcom/libra/proprietary/fingerprintd:system/bin/fingerprintd:qcom \
    vendor/qcom/libra/proprietary/hal_proxy_daemon:system/bin/hal_proxy_daemon:qcom \
    vendor/qcom/libra/proprietary/halutil:system/bin/halutil:qcom \
    vendor/qcom/libra/proprietary/imsdatadaemon:system/bin/imsdatadaemon:qcom \
    vendor/qcom/libra/proprietary/imsqmidaemon:system/bin/imsqmidaemon:qcom \
    vendor/qcom/libra/proprietary/ims_rtp_daemon:system/bin/ims_rtp_daemon:qcom \
    vendor/qcom/libra/proprietary/irsc_util:system/bin/irsc_util:qcom \
    vendor/qcom/libra/proprietary/location-mq:system/bin/location-mq:qcom \
    vendor/qcom/libra/proprietary/loc_launcher:system/bin/loc_launcher:qcom \
    vendor/qcom/libra/proprietary/lowi-server:system/bin/lowi-server:qcom \
    vendor/qcom/libra/proprietary/msm_irqbalance:system/bin/msm_irqbalance:qcom \
    vendor/qcom/libra/proprietary/netmgrd:system/bin/netmgrd:qcom \
    vendor/qcom/libra/proprietary/nl_listener:system/bin/nl_listener:qcom \
    vendor/qcom/libra/proprietary/perfd:system/bin/perfd:qcom \
    vendor/qcom/libra/proprietary/pktlogconf:system/bin/pktlogconf:qcom \
    vendor/qcom/libra/proprietary/PktRspTest:system/bin/PktRspTest:qcom \
    vendor/qcom/libra/proprietary/pm-proxy:system/bin/pm-proxy:qcom \
    vendor/qcom/libra/proprietary/pm-service:system/bin/pm-service:qcom \
    vendor/qcom/libra/proprietary/port-bridge:system/bin/port-bridge:qcom \
    vendor/qcom/libra/proprietary/qmakernote-xtract:system/bin/qmakernote-xtract:qcom \
    vendor/qcom/libra/proprietary/check_system_health:system/bin/qmi-framework-tests/check_system_health:qcom \
    vendor/qcom/libra/proprietary/qmi_ping_clnt_test_0000:system/bin/qmi-framework-tests/qmi_ping_clnt_test_0000:qcom \
    vendor/qcom/libra/proprietary/qmi_ping_clnt_test_0001:system/bin/qmi-framework-tests/qmi_ping_clnt_test_0001:qcom \
    vendor/qcom/libra/proprietary/qmi_ping_clnt_test_1000:system/bin/qmi-framework-tests/qmi_ping_clnt_test_1000:qcom \
    vendor/qcom/libra/proprietary/qmi_ping_clnt_test_1001:system/bin/qmi-framework-tests/qmi_ping_clnt_test_1001:qcom \
    vendor/qcom/libra/proprietary/qmi_ping_clnt_test_2000:system/bin/qmi-framework-tests/qmi_ping_clnt_test_2000:qcom \
    vendor/qcom/libra/proprietary/qmi_ping_svc:system/bin/qmi-framework-tests/qmi_ping_svc:qcom \
    vendor/qcom/libra/proprietary/qmi_ping_test:system/bin/qmi-framework-tests/qmi_ping_test:qcom \
    vendor/qcom/libra/proprietary/qmi_test_mt_client_init_instance:system/bin/qmi-framework-tests/qmi_test_mt_client_init_instance:qcom \
    vendor/qcom/libra/proprietary/qmi_test_service_clnt_test_0000:system/bin/qmi-framework-tests/qmi_test_service_clnt_test_0000:qcom \
    vendor/qcom/libra/proprietary/qmi_test_service_clnt_test_0001:system/bin/qmi-framework-tests/qmi_test_service_clnt_test_0001:qcom \
    vendor/qcom/libra/proprietary/qmi_test_service_clnt_test_1000:system/bin/qmi-framework-tests/qmi_test_service_clnt_test_1000:qcom \
    vendor/qcom/libra/proprietary/qmi_test_service_clnt_test_1001:system/bin/qmi-framework-tests/qmi_test_service_clnt_test_1001:qcom \
    vendor/qcom/libra/proprietary/qmi_test_service_clnt_test_2000:system/bin/qmi-framework-tests/qmi_test_service_clnt_test_2000:qcom \
    vendor/qcom/libra/proprietary/qmi_test_service_test:system/bin/qmi-framework-tests/qmi_test_service_test:qcom \
    vendor/qcom/libra/proprietary/qmi_simple_ril_test:system/bin/qmi_simple_ril_test:qcom \
    vendor/qcom/libra/proprietary/qmuxd:system/bin/qmuxd:qcom \
    vendor/qcom/libra/proprietary/radish:system/bin/radish:qcom \
    vendor/qcom/libra/proprietary/rmt_storage:system/bin/rmt_storage:qcom \
    vendor/qcom/libra/proprietary/subsystem_ramdump:system/bin/subsystem_ramdump:qcom \
    vendor/qcom/libra/proprietary/test_diag:system/bin/test_diag:qcom \
    vendor/qcom/libra/proprietary/thermal-engine:system/bin/thermal-engine:qcom \
    vendor/qcom/libra/proprietary/time_daemon:system/bin/time_daemon:qcom \
    vendor/qcom/libra/proprietary/wcnss_filter:system/bin/wcnss_filter:qcom \
    vendor/qcom/libra/proprietary/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb:qcom \
    vendor/qcom/libra/proprietary/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb:qcom \
    vendor/qcom/libra/proprietary/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb:qcom \
    vendor/qcom/libra/proprietary/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb:qcom \
    vendor/qcom/libra/proprietary/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb:qcom \
    vendor/qcom/libra/proprietary/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb:qcom \
    vendor/qcom/libra/proprietary/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb:qcom \
    vendor/qcom/libra/proprietary/profile.txt:system/etc/cne/profile.txt:qcom \
    vendor/qcom/libra/proprietary/dsi_config.xml:system/etc/data/dsi_config.xml:qcom \
    vendor/qcom/libra/proprietary/netmgr_config.xml:system/etc/data/netmgr_config.xml:qcom \
    vendor/qcom/libra/proprietary/qmi_config.xml:system/etc/data/qmi_config.xml:qcom \
    vendor/qcom/libra/proprietary/Libra_radio-general.cfg:system/etc/diag/Libra_radio-general.cfg:qcom \
    vendor/qcom/libra/proprietary/ims_epdg.cfg:system/etc/diag/ims_epdg.cfg:qcom \
    vendor/qcom/libra/proprietary/wlan.cfg:system/etc/diag/wlan.cfg:qcom \
    vendor/qcom/libra/proprietary/flp.conf:system/etc/flp.conf:qcom \
    vendor/qcom/libra/proprietary/izat.conf:system/etc/izat.conf:qcom \
    vendor/qcom/libra/proprietary/lowi.conf:system/etc/lowi.conf:qcom \
    vendor/qcom/libra/proprietary/cneapiclient.xml:system/etc/permissions/cneapiclient.xml:qcom \
    vendor/qcom/libra/proprietary/embms.xml:system/etc/permissions/embms.xml:qcom \
    vendor/qcom/libra/proprietary/qcrilhook.xml:system/etc/permissions/qcrilhook.xml:qcom \
    vendor/qcom/libra/proprietary/qti_permissions.xml:system/etc/permissions/qti_permissions.xml:qcom \
    vendor/qcom/libra/proprietary/rcsservice.xml:system/etc/permissions/rcsservice.xml:qcom \
    vendor/qcom/libra/proprietary/qcril.db:system/etc/qcril.db:qcom \
    vendor/qcom/libra/proprietary/qmi_fw.conf:system/etc/qmi_fw.conf:qcom \
    vendor/qcom/libra/proprietary/sap.conf:system/etc/sap.conf:qcom \
    vendor/qcom/libra/proprietary/thermal-engine-8992.conf:system/etc/thermal-engine-8992.conf:qcom \
    vendor/qcom/libra/proprietary/cneapiclient.jar:system/framework/cneapiclient.jar:qcom \
    vendor/qcom/libra/proprietary/embmslibrary.jar:system/framework/embmslibrary.jar:qcom \
    vendor/qcom/libra/proprietary/qcrilhook.jar:system/framework/qcrilhook.jar:qcom \
    vendor/qcom/libra/proprietary/rcsimssettings.jar:system/framework/rcsimssettings.jar:qcom \
    vendor/qcom/libra/proprietary/rcsservice.jar:system/framework/rcsservice.jar:qcom \
    vendor/qcom/libra/proprietary/lib64/fingerprint.libra.so:system/lib64/hw/fingerprint.libra.so:qcom \
    vendor/qcom/libra/proprietary/lib64/gps.msm8992.so:system/lib64/hw/gps.msm8992.so:qcom \
    vendor/qcom/libra/proprietary/lib64/lib_fpc_tac_shared.so:system/lib64/lib_fpc_tac_shared.so:qcom \
    vendor/qcom/libra/proprietary/lib64/libgps.utils.so:system/lib64/libgps.utils.so:qcom \
    vendor/qcom/libra/proprietary/lib64/libiperf.so:system/lib64/libiperf.so:qcom \
    vendor/qcom/libra/proprietary/lib64/libloc_core.so:system/lib64/libloc_core.so:qcom \
    vendor/qcom/libra/proprietary/lib64/libloc_eng.so:system/lib64/libloc_eng.so:qcom \
    vendor/qcom/libra/proprietary/lib64/libwifi-hal-qcom.so:system/lib64/libwifi-hal-qcom.so:qcom \
    vendor/qcom/libra/proprietary/fingerprint.libra.so:system/lib/hw/fingerprint.libra.so:qcom \
    vendor/qcom/libra/proprietary/gps.msm8992.so:system/lib/hw/gps.msm8992.so:qcom \
    vendor/qcom/libra/proprietary/lib_fpc_tac_shared.so:system/lib/lib_fpc_tac_shared.so:qcom \
    vendor/qcom/libra/proprietary/libgps.utils.so:system/lib/libgps.utils.so:qcom \
    vendor/qcom/libra/proprietary/libiperf.so:system/lib/libiperf.so:qcom \
    vendor/qcom/libra/proprietary/libloc_core.so:system/lib/libloc_core.so:qcom \
    vendor/qcom/libra/proprietary/libloc_eng.so:system/lib/libloc_eng.so:qcom \
    vendor/qcom/libra/proprietary/libwifi-hal-qcom.so:system/lib/libwifi-hal-qcom.so:qcom \
    vendor/qcom/libra/proprietary/iperf3:system/xbin/iperf3:qcom \

