# Step 3: Start from the Jupyter team's minimal-notebook image
FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Run container as notebook user (standard for Jupyter images)
USER ${NB_UID}

# Set working directory inside the container
WORKDIR /home/jovyan
