ARG BUILD_FROM
FROM ${BUILD_FROM:-homeassistant/aarch64-base:latest}

RUN apk add --no-cache python3

WORKDIR /app

COPY index.html LICENSE README.md /app/
COPY offsets/ /app/offsets/
COPY payloads/ /app/payloads/
COPY src/ /app/src/
COPY run.sh /app/
RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]
