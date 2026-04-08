#!/bin/bash
# Automatically disable root login and enforce SSH keys
sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config