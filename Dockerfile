FROM --platform=linux/amd64 ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y libpq-dev \
    curl \
    git \
    gnupg \
    libssl-dev \
    pkg-config \
    python3.10 \
    python3-pip \
    python3-venv \
    && rm -rf /var/lib/apt/lists/*

RUN curl https://get.modular.com | sh - && \
    modular auth mut_a07efdd04e7441a7bb432821942f8dd1 && \
    modular install mojo 

COPY requirements.txt /app

RUN pip install -r requirements.txt

# 環境変数を設定
RUN echo 'export MODULAR_HOME="$HOME/.modular"' >> ~/.bashrc \
    && echo 'export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"' >> ~/.bashrc 