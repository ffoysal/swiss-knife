

FROM gcr.io/kubernetes-e2e-test-images/dnsutils:1.3
RUN apk update && \
    apk add mysql-client curl postgresql-client mtr jq wget bind-tools
RUN apk add --no-cache wget && \
    wget https://github.com/mikefarah/yq/releases/download/v4.6.3/yq_linux_amd64 -O /usr/bin/yq && \
    chmod +x /usr/bin/yq