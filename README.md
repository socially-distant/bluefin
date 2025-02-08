<h3 align="center" style="font-size:60px;">Bluefin</h3>
<h5 align="center">Personalized fork of Bluefin</h5>
<h5 align="center">*Deinonychus antirrhopus*</h5>

[![Latest Images](https://github.com/socially-distant/bluefin/actions/workflows/build-image-latest.yml/badge.svg)](https://github.com/socially-distant/bluefin/actions/workflows/build-image-latest.yml) [![Stable Images](https://github.com/socially-distant/bluefin/actions/workflows/build-image-stable.yml/badge.svg)](https://github.com/socially-distant/bluefin/actions/workflows/build-image-stable.yml) [![GTS Images](https://github.com/socially-distant/bluefin/actions/workflows/build-image-gts.yml/badge.svg)](https://github.com/socially-distant/bluefin/actions/workflows/build-image-gts.yml) 

## About & Features

This is [apoordev](https://github.com/apoordev)'s opinionated fork of [ublue](https://universal-blue.org/)'s Bluefin. It still depends on [ublue-os/main](https://github.com/ublue-os/main), [ublue-os/hwe](https://github.com/ublue-os/hwe), and [ublue-os/akmods](https://github.com/ublue-os/akmods). This fork adds the following features:

- Replaced VSCode with VSCodium
- Added neovim
- Added RamaLama
- Added install-nix ujust command [EXPERIMENTAL]
- Added waydroid and waydroid ujust command from bazzite
- Changed Logo

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
