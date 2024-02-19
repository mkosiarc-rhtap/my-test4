FROM registry.access.redhat.com/ubi8/ubi:latest

RUN ls
RUN dnf install libvirt-libs
RUN ls /etc/pki/entitlement
