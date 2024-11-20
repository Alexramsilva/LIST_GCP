
FROM python:3.10

# remember to expose the port your app'll be exposed on.
EXPOSE 8080

WORKDIR /app

COPY requirements.txt app/requirements.txt


RUN pip install -r app/requirements.txt


COPY . /app


# run it!
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]