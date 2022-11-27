FROM python:3.7
COPY ./Python .
RUN pip3 install -r ./requirements.txt 
ENTRYPOINT ["python3", "./hello.py"]
