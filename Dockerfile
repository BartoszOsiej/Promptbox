# ── Runtime: static HTML served by nginx ──
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY <<'EOF' /etc/nginx/conf.d/default.conf
server {
    listen 80;
    server_name _;
    root /usr/share/nginx/html;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }

    # Security headers
    add_header X-Frame-Options "SAMEORIGIN" always;
    add_header X-Content-Type-Options "nosniff" always;
}
EOF
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
