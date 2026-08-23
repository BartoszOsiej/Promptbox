Output assets/prompt-inbox-demo.svg

Set FontSize 16
Set Width 960
Set Height 420
Set Shell bash
Set MarginColor "#0d1117"
Set Theme {
  "name": "promptbox",
  "black": "#0d1117",
  "red": "#f85149",
  "green": "#3fb950",
  "yellow": "#e3b341",
  "blue": "#58a6ff",
  "magenta": "#a371f7",
  "cyan": "#39c5cf",
  "white": "#e6edf3",
  "brightBlack": "#8b949e"
}

Type "npm install -g prompt-inbox"
Enter
Sleep 1s

Type "prompt-inbox --help"
Enter
Sleep 600ms

Type "prompt-inbox setup --repo BartoszOsiej/externum"
Enter
Sleep 1s

Type "# Send a prompt → lands as GitHub issue → agent handles it"
Enter
Sleep 500ms

Type "# Mobile-first · zero backend · HTML5"
Enter
Sleep 1s
