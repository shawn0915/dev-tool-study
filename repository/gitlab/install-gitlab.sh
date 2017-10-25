#!/bin/bash
yum install -y curl policycoreutils openssh-server openssh-clients postfix

systemctl enable postfix
systemctl start postfix

rpm -ivh gitlab-ce-8.10.5-ce.0.el7.x86_64.rpm

gitlab-ctl reconfigure

echo "***** Done. *****"
