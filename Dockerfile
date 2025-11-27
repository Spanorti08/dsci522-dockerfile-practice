FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

USER root

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN conda install --yes --file /tmp/conda-linux-64.lock && \
    conda clean --all -f -y

USER ${NB_UID}
