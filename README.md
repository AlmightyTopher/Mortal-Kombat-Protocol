
## 📘 `README.md`

````markdown
# Mortal Kombat Protocol 🥋
A self-auditing MCP finisher agent that enforces completion with Mortal Kombat flair.

## Overview
The Mortal Kombat Protocol (MKP) is a reusable automation spec kit and Finisher Agent designed to keep AI-driven projects from dying half-built.  
It audits structure, verifies MCP setup, and—when everything checks out—declares a **Flawless Victory**.

## Commands
```bash
/finish_him audit
/finish_him finalize
````

* **audit** – Checks project readiness and manifest compliance.
* **finalize** – Runs all validation, starts MCPs, then ends with appropriate Mortal Kombat dramatics.

## Folder Layout

```
vibe_constitution.md     # 3-Step Vibe Framework rules of completion
mcp_manifest.json        # MCP category and policy definitions
finisher_agent.py        # The Mortal Kombat Finisher
finish_him.yaml          # Slash-command configuration
```

## Quick Start

```bash
python finisher_agent.py --project ./Mortal_Kombat_Protocol --mode finalize
```

If everything’s configured correctly, you’ll hear a short 8-bit fanfare and see:

```
Flawless Victory.
```
