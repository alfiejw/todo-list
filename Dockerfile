FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENV DATABASE_URI=sqlite:///data.db
ENV SECRET_KEY=314159
ENTRYPOINT [ "python3", "app.py" ]