FROM cgr.dev/chainguard/nginx:latest
COPY website/nginx.conf /etc/nginx/nginx.conf
COPY website/index.html /var/lib/nginx/html/
