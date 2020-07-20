SRC_URI = "git://github.com/Nuvoton-Israel/phosphor-bmc-code-mgmt.git"
SRCREV = "fc3f1c8c8fbe516aaa094e2776b0579534a6da63"

FILESEXTRAPATHS_prepend_olympus-nuvoton := "${THISDIR}/${PN}:"

inherit obmc-phosphor-systemd
SYSTEMD_SERVICE_${PN}-updater_append_olympus-nuvoton = " \
    force-reboot.service \
    reboot-guard-enable.service \
    reboot-guard-disable.service \
"

FILES_${PN}-updater_append_olympus-nuvoton = " \
    ${datadir}/phosphor-bmc-code-mgmt/bios-release"

PACKAGECONFIG_olympus-nuvoton += "verify_signature"
