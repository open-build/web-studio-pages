# Webstudio Pages Editor

This is a starter kit to visually edit a GitHub Pages static site using [Webstudio](https://github.com/webstudio-is/webstudio) in Docker.

## 🚀 Features

- Dockerized Webstudio editor
- GitHub Pages integration
- GitHub Actions for CI/CD
- Custom `nginx.conf` for production

## 🛠️ Usage

### 1. Clone and Build

```bash
docker build --build-arg GIT_REPO=https://github.com/GovernCRM/website.git -t webstudio-editor .
docker run -p 5173:5173 \
  -e AUTH_SECRET=supersecret123 \
  -e DEFAULT_DEV_EMAIL=admin@webstudio.dev \
  webstudio-editor

```

### 2. Access Editor

Open [http://localhost:5173](http://localhost:5173) to edit your GitHub Pages content.

### 3. Push Changes

Commit and push your changes back to GitHub:

```bash
git add .
git commit -m "Edited with Webstudio"
git push origin main
```

### 4. GitHub Actions Deployment

On each push to `main`, the site will be rebuilt and deployed to GitHub Pages using the included workflow.

### 🔐 GitHub Secrets Required

- `GITHUB_TOKEN` – auto-included by GitHub Actions
- Optional: `DOCKER_USERNAME` / `DOCKER_PASSWORD` if publishing to Docker Hub

---

MIT License • by [Open Build](https://github.com/open-build)
