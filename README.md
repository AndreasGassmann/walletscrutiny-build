# AirGap Vault - walletscrutiny.com verification build

In this project, the [AirGap Team](https://airgap.it/) will upload new signed releases of AirGap Vault, before they are submit to the Google Play Store. This will trigger an autimatic build that will execute the [walletscrutiny.com](Walletscrutiny.com) script to verify the reproducibility of the apk. 

The source code of [AirGap Vault](https://github.com/airgap-it/airgap-vault).
The source code of the verification script: https://gitlab.com/walletscrutiny/walletScrutinyCom/-/blob/master/test.sh

The original apk of AirGap Vault is built internally, then it is signed with our [Air-gapped and offline APK Signer](https://github.com/airgap-it/airgap-raspberry-apk-signer).
