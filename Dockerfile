FROM buildkite/agent:3.1.2

# Installed to '/root/google-cloud-sdk/bin/gcloud' which is added to PATH below
RUN echo "--- Installing gcloud" && \
    CLOUDSDK_CORE_DISABLE_PROMPTS=1 curl https://sdk.cloud.google.com | CLOUDSDK_CORE_DISABLE_PROMPTS=1 bash
ENV PATH="/root/google-cloud-sdk/bin:${PATH}"

# TODO: Add some custom hooks?