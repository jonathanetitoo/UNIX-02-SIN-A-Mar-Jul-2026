# ============================================================================
#  Dockerfile — "receta" para construir la imagen del curso
# ============================================================================
FROM kalilinux/kali-rolling:latest

# ----------------------------------------------------------------------------
# ENV: variables de entorno permanentes dentro del contenedor
# ----------------------------------------------------------------------------
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color

# ----------------------------------------------------------------------------
# Pre-respuesta a una pregunta interactiva de Wireshark
# ----------------------------------------------------------------------------
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections

# ----------------------------------------------------------------------------
# RUN: instalar TODO el software del curso
# ----------------------------------------------------------------------------
RUN apt-get update && apt-get install -y --no-install-recommends \
    neovim \
    vim \
    zsh \
    bash-completion \
    perl \
    make \
    gawk \
    sed \
    grep \
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    man-db \
    manpages \
    manpages-posix \
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    shellcheck \
    nmap \
    masscan \
    tcpdump \
    tshark \
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    httpie \
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# ----------------------------------------------------------------------------
# Configuración de Entorno y Shell
# ----------------------------------------------------------------------------
SHELL ["/bin/bash", "-c"]
WORKDIR /workspaces

# Configuración de Git
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# CONFIGURACIÓN DEL PROMPT ANALISTA
# ----------------------------------------------------------------------------
# 1. Aseguramos que el shell por defecto sea Zsh para root
RUN chsh -s /bin/zsh root

# 2. Escribimos la configuración limpia en el .zshrc
RUN echo 'function get_exit_status() { [ $? -eq 0 ] && echo "%F{green}✓%f" || echo "%F{red}✗%f"; }' > /root/.zshrc && \
    echo 'setopt PROMPT_SUBST' >> /root/.zshrc && \
    echo 'PROMPT="%F{cyan}[Analista-kevin-almache]%f %F{yellow}%1~%f \$(get_exit_status) %# "' >> /root/.zshrc
# Comando por defecto
CMD ["/bin/zsh"]