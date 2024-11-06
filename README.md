# Bluefin and Aurora

[![Latest Images](https://github.com/apoordev/bluefin/actions/workflows/build-image-latest.yml/badge.svg)](https://github.com/apoordev/bluefin/actions/workflows/build-image-latest.yml) [![Stable Images](https://github.com/apoordev/bluefin/actions/workflows/build-image-stable.yml/badge.svg)](https://github.com/APoorDev/bluefin/actions/workflows/build-image-stable.yml) [![GTS Images](https://github.com/apoordev/bluefin/actions/workflows/build-image-gts.yml/badge.svg)](https://github.com/APoorDev/bluefin/actions/workflows/build-image-gts.yml) 

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
