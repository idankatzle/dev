# Base image: Red Hat Universal Base Image
FROM registry.access.redhat.com/ubi9/ubi:latest

# Metadata (important for enterprise & supply chain)
LABEL name="konflux-lab"
LABEL description="Simple demo image for Tekton/Konflux pipeline"
LABEL maintainer="idankatz"

# Install minimal runtime dependencies
RUN dnf install -y \
    bash \
    && dnf clean all

# Create a non-root user (best practice)
RUN useradd -u 1001 appuser

# Switch to non-root user
USER 1001

# Set working directory
WORKDIR /app

# Default command
CMD ["bash", "-c", "echo Hello from Konflux build image && sleep 3600"]

