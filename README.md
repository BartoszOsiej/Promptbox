# 🎯 Prompt Inbox

![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)
![npm](https://img.shields.io/badge/npm-prompt--inbox-blue?style=flat-square&logo=nodedotjs)
![Docker](https://img.shields.io/badge/Docker-GHCR-2496ED?style=flat-square&logo=docker)
![HTML](https://img.shields.io/badge/HTML5-Zero%20Build-E34F26?style=flat-square&logo=html5)

**Remote prompt inbox for the coding agent — send a prompt from anywhere,
it lands as a GitHub issue and gets handled.**

> 🇵🇱 Ten dokument ma wersję polską w opisie repository

---

## Table of Contents

- [How it works](#how-it-works)
- [Quick Start](#quick-start)
- [Agent Instructions](#agent-instructions)
- [Form Behaviour](#form-behaviour)
- [Docker](#docker)
- [License](#license)

---

## How it works

```
User → Prompt Inbox page → GitHub Issue → Agent handles it → Issue closed
```

1. Open [bartoszosiej.github.io/prompt-inbox](https://bartoszosiej.github.io/prompt-inbox/)
2. Pick a project, type a prompt, hit **Submit**
3. A pre-filled GitHub issue opens in the browser
4. The coding agent picks it up, handles it, and closes the issue

**No tokens, no backend, no database** — the page simply pre-fills
`issues/new?title=…&body=…`.

---

## Quick Start

```bash
# Local dev
python3 -m http.server 8080
# Open http://localhost:8080

# Docker
docker build -t prompt-inbox .
docker run -p 8080:80 prompt-inbox
```

---

## Agent Instructions

When the user says something like *"check the inbox"*:

1. Read **open issues**: `https://api.github.com/repos/BartoszOsiej/prompt-inbox/issues?state=open`
2. Each issue has: **title** `[Project] summary`, **body** with the prompt
3. Handle the prompt in the relevant project repo, then **close the issue**
4. Reply to the user in the chat with what was done

---

## Form Behaviour

- `index.html` is a single self-contained static page (no build step)
- Submit opens a pre-filled new-issue URL in a new tab
- Issue title: `[Project] <first 60 chars of the prompt>`
- Body contains full prompt, project, context, timestamp

---

## Docker

```bash
# Build
docker build -t ghcr.io/bartoszosiej/prompt-inbox:latest .

# Run
docker run -p 8080:80 ghcr.io/bartoszosiej/prompt-inbox:latest
```

---

## Deploy

Pages is configured to publish from `main` branch, `/` root — no Actions
workflow needed. Push to `main` and the site updates automatically.

---

## License

MIT

---

> 🤖 Generated with [Codebuff](https://codebuff.com) · [Portfolio](https://bartoszosiej.github.io/Portfolio/)
