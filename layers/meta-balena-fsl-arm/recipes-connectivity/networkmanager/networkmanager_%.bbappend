do_deploy:append:nitrogen8mm() {
     cat >> ${D}${sysconfdir}/NetworkManager/NetworkManager.conf <<EOF

[keyfile]
unmanaged-devices=interface-name:p2p*
EOF

}
