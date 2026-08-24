<img src="https://capsule-render.vercel.app/api?type=shark&color=0:0d1117,50:d29922,100:a3d6ff&height=140&section=header&text=Prompt%20Inbox&fontSize=38&fontColor=d29922&desc=send%20a%20prompt%20from%20anywhere%20%C2%B7%20it%20lands%20as%20an%20issue%20%C2%B7%20the%20agent%20handles%20it&descSize=14&descAlignY=72" width="100%" />

<div align="center">

[![npm](https://img.shields.io/npm/v/prompt-inbox?style=for-the-badge&logo=nodedotjs)](https://www.npmjs.com/package/prompt-inbox)
[![GHCR](https://img.shields.io/badge/GHCR-image-2496ED?style=for-the-badge&logo=docker)](https://github.com/BartoszOsiej/prompt-inbox/pkgs/container/prompt-inbox)
[![Live](https://img.shields.io/badge/live-GitHub_Pages-2ea043?style=for-the-badge&logo=githubpages)](https://bartoszosiej.github.io/prompt-inbox/)
![HTML5](https://img.shields.io/badge/HTML5-zero%20build-E34F26?style=for-the-badge&logo=html5)
[![License](https://img.shields.io/badge/license-MIT-green?style=for-the-badge)](LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/BartoszOsiej/prompt-inbox/badge)](https://scorecard.dev/viewer/?uri=github.com/BartoszOsiej/prompt-inbox)

**Remote prompt inbox for the coding agent.**

</div>

```mermaid
flowchart LR
    U["user<br/>any device"] --> P["prompt inbox page<br/>static, zero backend"]
    P --> I["GitHub issue<br/>pre-filled"]
    I --> A["coding agent<br/>picks it up"]
    A --> H["handled + closed"]
```

> [!TIP]
> **No tokens, no backend, no database** — the page simply pre-fills
> `issues/new?title=…&body=…`.

## 📺 Demo



<!-- VHS auto-rendered — run: vhs demos/prompt-inbox.tape -->



![Prompt Inbox Demo](assets/prompt-inbox-demo.gif)




## How it works

1. Open [bartoszosiej.github.io/prompt-inbox](https://bartoszosiej.github.io/prompt-inbox/)
2. Pick a project, type a prompt, hit **Submit**
3. A pre-filled GitHub issue opens in the browser
4. The coding agent picks it up, handles it, and closes the issue

<details>
<summary><b>🤖 Agent instructions</b></summary>

When the user says something like *"check the inbox"*:

1. Read **open issues**: `https://api.github.com/repos/BartoszOsiej/prompt-inbox/issues?state=open`
2. Each issue has: **title** `[Project] summary`, **body** with the prompt
3. Handle the prompt in the relevant project repo, then **close the issue**
4. Reply to the user in the chat with what was done

</details>

<details>
<summary><b>⚙️ Form behaviour & quick start</b></summary>

- `index.html` is a single self-contained static page (no build step)
- Submit opens a pre-filled new-issue URL in a new tab
- Issue title: `[Project] <first 60 chars of the prompt>`
- Body contains full prompt, project, context, timestamp

```bash
# Local dev
python3 -m http.server 8080

# Docker
docker build -t ghcr.io/bartoszosiej/prompt-inbox:latest .
docker run -p 8080:80 ghcr.io/bartoszosiej/prompt-inbox:latest
```

Pages publishes from `main` — push and the site updates automatically.

</details>

---

<div align="center">

**Part of [BartoszOsiej](https://github.com/BartoszOsiej)'s agent workflow**

MIT © 2026 Bartosz Osiej

</div>
