 FROM python:3.12-slim-bookworm
 RUN rm -rf /usr/lib/python3.11/EXTERNALLY-MANAGED
 WORKDIR /app
 COPY . .
 RUN pip install --no-cache-dir -r requirements.txt
 EXPOSE 5000
 ENTRYPOINT ["flask", "run"]
 CMD ["--host=0.0.0.0"]

