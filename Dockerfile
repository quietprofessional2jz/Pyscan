# Using LTS Ubuntu Focal
FROM registry.gitlab.com/portfolio-collection/containers/images/python-base:latest

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

RUN useradd -m -d /home/app -s /bin/bash app

USER app:app

WORKDIR /home/app

ENTRYPOINT ["python3"]

CMD ["--version"]
