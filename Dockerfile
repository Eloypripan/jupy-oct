ARG BASE_CONTAINER=jupyter/datascience-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Shanti Naik <visitsb@gmail.com>"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root

RUN apt-get -y update && \
    apt-get -y install octave octave-doc octave-info octave-htmldoc && \
    apt-get -y install octave-control octave-image octave-io octave-optim octave-signal octave-statistics && \
    pip install octave_kernel && \
    apt-get -y clean && apt-get -y autoclean

USER $NB_UID
