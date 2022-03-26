# ベースはminiconda3
FROM continuumio/miniconda3:latest

# 定型文と必要なパッケージのインストール
RUN apt-get --allow-releaseinfo-change update && apt-get install -y \
    # 念の為入れとくパッケージ
    sudo \
    wget \
    vim \
    libgl1-mesa-dev \
    libx11-dev

COPY requirements.txt ./
RUN pip install -r requirements.txt

RUN mkdir ./work
COPY image-sorter2_script.py ./work

ENV DISPLAY host.docker.internal:0.0
RUN echo DISPLAY

CMD ["python", "image-sorter2_script.py"]
# CMD ["/bin/bash"]