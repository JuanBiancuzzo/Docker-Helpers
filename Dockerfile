FROM texlive/texlive:latest-full

# Ahora vamos a usar bibtex
RUN apt-get update && \
    apt-get install -y texlive-bibtex-extra && \
    rm -rf /var/lib/apt/lists/*

COPY ./compile.sh /scripts/compile.sh
RUN chmod +x /scripts/compile.sh

WORKDIR /latex

CMD [ "bash", "/scripts/compile.sh" ]