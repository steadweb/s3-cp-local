FROM python:3.7-alpine

LABEL "com.github.actions.name"="S3 Copy Local File"
LABEL "com.github.actions.description"="Copy and Paste a file from a S3 bucket to local"
LABEL "com.github.actions.icon"="copy"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.1"
LABEL repository="https://github.com/steadweb/s3-cp-local"
LABEL homepage="https://github.com/steadweb/s3-cp-local"
LABEL maintainer="Luke Steadman <ljsteadman@gmail.com>"

RUN pip install --quiet --no-cache-dir awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
