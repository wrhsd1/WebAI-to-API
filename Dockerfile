FROM python:3.10
RUN apt update
RUN apt install curl -y
WORKDIR /app/
ADD requirements.txt /app/
ADD . /app/
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python", "src/main.py", "--host", "localhost", "--port", "8000", "--reload"]
