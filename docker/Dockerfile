FROM --platform=linux/amd64 ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive \
    DOTNET_ROLL_FORWARD=Major \
    PATH=/root/.dotnet/tools:$PATH

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        git \
        ca-certificates \
        gnupg \
        unzip \
        bash && \
    rm -rf /var/lib/apt/lists/*

COPY . /gembox-skills
WORKDIR /gembox-skills

RUN chmod +x \
        docker/install-base.sh \
        docker/install-cli-agents.sh \
        docker/display-versions.sh && \
    docker/install-base.sh && \
    docker/install-cli-agents.sh && \
    rm -rf \
        /var/lib/apt/lists/* \
        /var/cache/apt/* \
        /root/.npm \
        /root/.cache \
        /tmp/*

CMD ["bash", "-lc", "/gembox-skills/docker/display-versions.sh; exec bash"]
