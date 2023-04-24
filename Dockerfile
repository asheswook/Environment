FROM python:3.10.3-slim-bullseye

COPY . /root/Environment
RUN pip3 install ssenv

RUN cd /root/Environment/tests && \
    python3 test.py
