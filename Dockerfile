FROM python:3.9.19-slim

RUN mkdir -p /app
WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    g++ \
    libffi-dev \
    libssl-dev \
    python3-dev \
    python3-pip \
    git \
    libfreetype6-dev \
    libpng-dev \
    libjpeg-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /app/

RUN pip install git+https://github.com/hirokidaichi/gilot
RUN pip install -r requirements.txt

ENTRYPOINT ["gilot"]