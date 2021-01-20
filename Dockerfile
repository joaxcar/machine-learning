ARG BASE_CONTAINER=jupyter/tensorflow-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Johan Carlsson <johacarl@kth.se>"

# Install scjikit
RUN pip install --quiet --no-cache-dir \
    sklearn PyQt5 ipython && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
