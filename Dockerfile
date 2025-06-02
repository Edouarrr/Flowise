FROM node:20-alpine

USER root

ENV PUPPETEER_SKIP_DOWNLOAD=true

# Installe Flowise en global
RUN npm install -g flowise

# Dépendances pour Chromium et PDF
RUN apk add --no-cache chromium git python3 py3-pip make g++ build-base cairo-dev pango-dev curl

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

ENTRYPOINT ["flowise", "start"]
