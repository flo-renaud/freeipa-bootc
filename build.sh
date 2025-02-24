#!/bin/bash

set -ouex pipefail

### Install packages

dnf5 install -y 'dnf5-command(copr)'
dnf copr enable -y frenaud/freeipa-bootc
dnf install -y freeipa-client 
dnf copr disable -y frenaud/freeipa-bootc

