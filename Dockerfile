FROM node:20-alpine

# Install system packages
RUN apk add --no-cache git bash

# Install pnpm
RUN npm install -g pnpm

# Clone Webstudio
WORKDIR /app
RUN git clone https://github.com/webstudio-is/webstudio.git

# Clone your GitHub Pages site into the "sites" folder
ARG GIT_REPO=https://github.com/GovernCRM/website.git
RUN git clone $GIT_REPO /app/webstudio/sites/sample-site

# Add the startup script
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# Install all monorepo dependencies
WORKDIR /app/webstudio
RUN pnpm install

EXPOSE 5173

CMD ["/app/start.sh"]
