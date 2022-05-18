FROM aliyunfc/runtime-python3.6:build-latest

RUN mkdir -p /tmp/python
COPY requirements.txt /tmp/python/requirements.txt
RUN cd /tmp/python && pip install --target=/tmp/python -r requirements.txt
RUN cd /tmp
WORKDIR /tmp
RUN zip -r layer ./*