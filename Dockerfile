FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    python3-venv \
    git

# create virtual environment    
RUN pythong3 -m venv /venv
RUN /vev/bin/pip install PyYAML

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]