# Start from the Jupyter minimal-notebook image
FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Switch to root to be able to install packages
USER root

# Copy the Linux lock file into the image
COPY conda-linux-64.lock /tmp/conda-linux-64.lock

# Install packages from the lock file using mamba
RUN mamba install --yes --file /tmp/conda-linux-64.lock && \
    mamba clean --all -f -y

# Switch back to the default notebook user
USER ${NB_UID}