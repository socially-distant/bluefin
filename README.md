# Bluefin and Aurora

[![Aurora Stable](https://github.com/APoorDev/bluefin/actions/workflows/build-coreos-aurora.yml/badge.svg)](https://github.com/APoorDev/bluefin/actions/workflows/build-coreos-aurora.yml) [![Aurora Latest](https://github.com/APoorDev/bluefin/actions/workflows/build-latest-aurora.yml/badge.svg)](https://github.com/APoorDev/bluefin/actions/workflows/build-latest-aurora.yml) 

[![Bluefin GTS](https://github.com/APoorDev/bluefin/actions/workflows/build-gts-bluefin.yml/badge.svg)](https://github.com/APoorDev/bluefin/actions/workflows/build-gts-bluefin.yml) [![Bluefin Stable](https://github.com/APoorDev/bluefin/actions/workflows/build-coreos-bluefin.yml/badge.svg)](https://github.com/APoorDev/bluefin/actions/workflows/build-coreos-bluefin.yml) [![Bluefin Latest](https://github.com/APoorDev/bluefin/actions/workflows/build-latest-bluefin.yml/badge.svg)](https://github.com/APoorDev/bluefin/actions/workflows/build-latest-bluefin.yml) 

### Secure Boot

Secure Boot is supported by default on our systems, providing an additional layer of security. After the first installation, you will be prompted to enroll the secure boot key in the BIOS.

Enter the password `universalblue` 
when prompted to enroll our key.

If this step is not completed during the initial setup, you can manually enroll the key by running the following command in the terminal:

`
ujust enroll-secure-boot-key
`

Secure boot is supported with our custom key. The pub key can be found in the root of the akmods repository [here](https://github.com/ublue-os/akmods/raw/main/certs/public_key.der).
If you'd like to enroll this key prior to installation or rebase, download the key and run the following:

```bash
sudo mokutil --timeout -1
sudo mokutil --import public_key.der
