ARG BASE_CONTAINER=jupyter/tensorflow-notebook
FROM $BASE_CONTAINER


LABEL maintainer="Johan Carloson <johacarl@kth.se>"

ENV LIBGL_ALWAYS_INDIRECT=1

# Install scjikito
USER root
RUN apt-get update && apt-get install -y python3-pyqt5
USER jovyan
RUN pip install --quiet --no-cache-dir \
    sklearn pyqt5 ipython && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
