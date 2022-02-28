FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV ATC_USERNAME=''
ENV ATC_PASSWORD=''
WORKDIR /code
COPY requirements.txt /code
COPY code /code
RUN pip install -r requirements.txt
WORKDIR /code
EXPOSE 8000
ENTRYPOINT [ "/code/run.sh" ]
