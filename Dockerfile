FROM python:3.7
ENV ENVIRONMENT=DEV \
    HOST=localhost   \ 
    PORT=8000        \
    REDIS_HOST=10.20.30.117  \
    REDIS_PORT=6379  \
    REDIS_DB=0
COPY ./Python .
RUN pip3 install -r ./requirements.txt 
ENTRYPOINT ["python3", "./hello.py"]
