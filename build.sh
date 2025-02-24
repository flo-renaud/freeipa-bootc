#!/bin/bash

set -ouex pipefail

### Install packages

dnf5 install -y 'dnf5-command(copr)'
dnf copr enable -y frenaud/freeipa-bootc
dnf install -y freeipa-client freeipa-client-epn freeipa-client-encrypted-dns freeipa-client-samba
dnf copr disable -y frenaud/freeipa-bootc

