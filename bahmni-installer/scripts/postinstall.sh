#!/bin/bash

mkdir -p /etc/bahmni-installer
mkdir -p /etc/bahmni-installer/deployment-artifacts
rm -f /usr/bin/bahmni
chown -R bahmni:bahmni /opt/bahmni-installer
ln -s /opt/bahmni-installer/bin/bahmni /usr/bin/bahmni
rm -f /etc/bahmni-installer/rpm_versions.yml
ln -s /opt/bahmni-installer/etc/rpm_versions.yml /etc/bahmni-installer/rpm_versions.yml
mkdir -p /var/log/bahmni-installer
chown -R bahmni:bahmni /var/log/bahmni-installer
