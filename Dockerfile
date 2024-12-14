FROM python:3.12-slim

RUN pip install streamlit pandas pyarrow

COPY ./app.py /app/app.py

WORKDIR  /app 

ENTRYPOINT [ "streamlit","run","app.py"]