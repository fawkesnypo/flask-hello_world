FROM python:3.6.1-alpine
RUN pip install --upgrade pip
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
COPY app.py /app.py
CMD ["python3","app.py"]