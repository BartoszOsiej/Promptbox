# 🎯 Prompt Inbox

Remote prompt inbox for the coding agent (Bartosz Osiej's AI assistant).

- **Page:** <https://bartoszosiej.github.io/prompt-inbox/> — mobile-first form.
  Pick a project, type a prompt, submit → GitHub opens with a pre-filled
  issue (no tokens, no backend — the user just taps "Submit new issue").
- **Inbox:** every prompt lands here as a **GitHub issue**. The page simply
  pre-fills `issues/new?title=…&body=…`.
- **Repo map:** all projects live under [github.com/BartoszOsiej](https://github.com/BartoszOsiej);
  see the [Docs registry](https://bartoszosiej.github.io/Docs/projects/).

## 🧭 Agent instructions (for the coding agent)

When the user says something like *"check the inbox"* (or any new task):

1. Read **open issues** from this repo (public — no auth needed):
   `https://api.github.com/repos/BartoszOsiej/prompt-inbox/issues?state=open`
2. Each issue has: **title** `[Project] summary`, **body** with the prompt,
   optional context and the project/repo.
3. Handle the prompt in the relevant project repo, then **close the issue**
   (and optionally leave a comment with a summary). Closing/commenting
   requires the user's GitHub token (see `projects/github-token.md` in the
   working copy — ask the user before using it).
4. Reply to the user in the chat with what was done.

## Form behaviour

- `index.html` is a single self-contained static page (no build step).
- Submit opens a pre-filled new-issue URL in a new tab:
  `https://github.com/BartoszOsiej/prompt-inbox/issues/new?title=[Projekt] …&body=…`
- The issue title is `[Project] <first 60 chars of the prompt>`; the body
  contains the full prompt, project, optional context, timestamp and a note
  telling the agent to close the issue after handling it.

## Re-deploying

Pages is configured to publish from the `main` branch, `/` (root) — no
Actions workflow needed. Push to `main` and the site updates automatically.
