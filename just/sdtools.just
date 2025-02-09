# vim: set ft=make :

# Security Advisory Reboot Enforcement
enable-advisory-reboot-prompt:
    systemctl enable --now --user rpm-ostree-advisory-notifier.timer
