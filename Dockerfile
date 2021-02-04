

FROM gcr.io/kubernetes-e2e-test-images/dnsutils:1.3
RUN apk update && \
    apk add mysql-client curl postgresql-client mtr
