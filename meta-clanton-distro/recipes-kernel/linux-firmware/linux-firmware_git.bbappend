
LIC_FILES_CHKSUM = "file://LICENSE.radeon;md5=9c2faab1bfca55e1510d6bde67206f9c \
                    file://LICENSE.dib0700;md5=f7411825c8a555a1a3e5eab9ca773431 \
                    file://LICENCE.xc5000;md5=1e170c13175323c32c7f4d0998d53f66 \
                    file://LICENCE.ralink-firmware.txt;md5=ab2c269277c45476fb449673911a2dfd \
                    file://LICENCE.qla2xxx;md5=4005328a134054f0fa077bdc37aa64f2 \
                    file://LICENCE.iwlwifi_firmware;md5=8b938534f77ffd453690eb34ed84ae8b \
                    file://LICENCE.i2400m;md5=14b901969e23c41881327c0d9e4b7d36 \
                    file://LICENCE.atheros_firmware;md5=30a14c7823beedac9fa39c64fdd01a13 \
                    file://LICENCE.agere;md5=af0133de6b4a9b2522defd5f188afd31 \
                    file://LICENCE.rtlwifi_firmware.txt;md5=00d06cfd3eddd5a2698948ead2ad54a5 \
                    file://LICENCE.broadcom_bcm43xx;md5=3160c14df7228891b868060e1951dfbc \
                    file://LICENCE.ti-connectivity;md5=186e7a43cf6c274283ad81272ca218ea \
                    file://LICENCE.atheros_firmware;md5=30a14c7823beedac9fa39c64fdd01a13 \
                    file://LICENCE.via_vt6656;md5=e4159694cba42d4377a912e78a6e850f \
                   "

SRCREV = "824994715e0276e64cdbf2badbe02921a78fb287"

do_install_append() {
        install -m 0644 LICENCE.iwlwifi_firmware ${D}${FWPATH}
        install -m 0644 iwlwifi-6000g2a-6.ucode ${D}${FWPATH}
        install -m 0644 iwlwifi-135-6.ucode ${D}${FWPATH}
        install -m 0644 iwlwifi-7260-7.ucode ${D}${FWPATH}
}

PACKAGES =+ "${PN}-iwlwifi-6000g2a-6 \
             ${PN}-iwlwifi-135-6 \
             ${PN}-iwlwifi-7260-7"


RDEPENDS_${PN}-iwlwifi-6000g2a-6 = "${PN}-iwlwifi-licence"
RDEPENDS_${PN}-iwlwifi-135-6 = "${PN}-iwlwifi-licence"
RDEPENDS_${PN}-iwlwifi-7260-7 = "${PN}-iwlwifi-licence"

FILES_${PN}-iwlwifi-licence =   "${FWPATH}/LICENCE.iwlwifi_firmware"
FILES_${PN}-rtl-license =       "${FWPATH}/LICENCE.rtlwifi_firmware.txt"
FILES_${PN}-iwlwifi-6000g2a-6 = "${FWPATH}/iwlwifi-6000g2a-6.ucode"
FILES_${PN}-iwlwifi-135-6 =     "${FWPATH}/iwlwifi-135-6.ucode"
FILES_${PN}-iwlwifi-7260-7 = "${FWPATH}/iwlwifi-7260-7.ucode"
