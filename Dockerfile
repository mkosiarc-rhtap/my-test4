#FROM quay.io/mkosiarc_rhtap/single-container-app:f2566ab as my-image


FROM scratch

ADD file.txt /
#COPY --from=my-image /usr/src/app /stuff

RUN ls
#RUN dnf install -y git
