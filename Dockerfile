

FROM alpine
RUN apk update && \
    apk add mysql-client curl postgresql-client
