# ベースはminiconda3
FROM continuumio/miniconda3:latest

# 定型文と必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    # 念の為入れとくパッケージ
    sudo \
    wget \
    vim \
    libgl1-mesa-dev \
    libx11-dev

COPY requirements.txt ./

RUN pip install -r requirements.txt

ENV DISPLAY host.docker.internal:0.0
RUN echo DISPLAY

CMD ["/bin/bash"]
