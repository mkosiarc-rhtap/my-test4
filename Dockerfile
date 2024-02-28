FROM quay.io/mkosiarc_rhtap/single-container-app:f2566ab as my-image


FROM scratch

COPY --from=my-image /usr/src/app /stuff
ADD file.txt /

#RUN ls
#RUN dnf install -y git
