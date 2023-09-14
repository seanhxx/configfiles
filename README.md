# Config_Files

## Setup git credential manager on ubuntu

1. [Install GCM](https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md#debian-package)
2. Install pass and gpg
```bash
    sudo apt install pass gpg
    git config --global credential.credentialStore gpg
    gpg --gen-key
    # <gpg-id> is the gpg key generated from previous step
    pass init <gpg-id>
```
