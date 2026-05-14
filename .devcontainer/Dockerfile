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
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Lanza una shell bash interactiva. Codespaces la sobrescribe con su
# propia terminal integrada de VS Code, pero es buena práctica dejarla
# definida para que la imagen sea usable también con Docker puro.

# Cambiar shell de login de root a zsh dentro de la imagen,
# para que chsh ya no haga falta y todo sea consistente.
RUN chsh -s /usr/bin/zsh root

# Prompt institucional para los y las estudiantes del curso
RUN cat >> /root/.zshrc <<'EOF'

# ===== Valida si un comando fue ejecutado correctamente =====
PROMPT='%F{cyan}[Analista-kevin-almache]%f %F{yellow}%1~%f %(?.%F{green}✓.%F{red}✗ %?)%f %# '
EOF

CMD ["/usr/bin/zsh"]