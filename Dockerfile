FROM python:3.14.3
WORKDIR /app
RUN python -m venv env
COPY requirements.txt .
RUN /app/env/bin/pip install -r requirements.txt
COPY app.py .
ENTRYPOINT ["/app/env/bin/python", "-m", "flask", "--app", "src/app.py", "run", "--host=0.0.0.0", "--port=5001"]
EXPOSE 5001