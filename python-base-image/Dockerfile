FROM python:3.9.2-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add alpine-sdk python3-dev

RUN pip3 install tornado==4.5.3 -i https://mirrors.aliyun.com/pypi/simple

RUN pip3 install numpy==1.20.2 boto3==1.17.49 -i https://mirrors.aliyun.com/pypi/simple

COPY setup.py /

COPY ol.c /

RUN cd / && python3 setup.py build_ext --inplace && mv ol.*.so /ol.so

COPY daemon.py /
