FROM quay.io/redhat-user-workloads/rhtas-tenant/rhtas-cli-1-0-beta/cosign@sha256:48fe9148ff23eca281f2f22c25a8b7b1afd75673725a8a4ed5f14e297a308b41 AS cosign-image

FROM registry.access.redhat.com/ubi8/ubi:latest

COPY --from=cosign-image /usr/local/bin/cosign /var/www/html/clients/linux

RUN ls
RUN dnf install -y git
