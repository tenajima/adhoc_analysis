FROM jupyter/base-notebook:latest

USER root

# requirements.txtファイルからパッケージをインストール
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
RUN rm /tmp/requirements.txt
