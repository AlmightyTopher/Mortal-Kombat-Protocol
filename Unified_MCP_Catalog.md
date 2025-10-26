# The Breathe-Easy MCP Catalog

> **Installing MCP servers should be as natural as breathing. Copy. Paste. Done.**

**Version:** 2.0.0
**Updated:** 2025-10-25
**Source:** [Awesome MCP Servers](https://github.com/appcypher/awesome-mcp-servers)

---

## ⚡ Quick Start

```bash
# The absolute essentials - install these first
claude mcp add filesystem -- npx -y @modelcontextprotocol/server-filesystem C:/Users/YOUR_USERNAME/Projects
claude mcp add fetch -- npx -y @modelcontextprotocol/server-fetch
claude mcp add sqlite -- npx -y @modelcontextprotocol/server-sqlite C:/path/to/database.db
claude mcp add git -- npx -y @modelcontextprotocol/server-git --repository C:/path/to/repo
```

Replace `YOUR_USERNAME` and paths with your actual paths!

---

## 📑 Table of Contents

- [Essential Core Servers](#essential-core-servers) - Start here
- [Development Tools](#development-tools) - Coding & version control
- [Databases](#databases) - Data access
- [Web & Search](#web--search) - Browse & scrape
- [Cloud & Storage](#cloud--storage) - Access cloud files
- [System Automation](#system-automation) - Control your machine
- [Communication](#communication) - Slack, Linear, etc.
- [Specialized Tools](#specialized-tools) - AI, IoT, Security
- [Configuration Templates](#configuration-templates) - Copy-paste configs

---

## 🎯 Essential Core Servers

### 📂 FileSystem ⭐
**What it does:** Read, write, and manage local files
**Required by:** Everything - this is your foundation

```bash
# Install
claude mcp add filesystem -- npx -y @modelcontextprotocol/server-filesystem C:/Users/dogma/Projects
```

**Configuration:**
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "C:/Users/dogma/Projects"]
    }
  }
}
```

**Use Cases:**
- Read code files for analysis
- Write generated code
- Project structure exploration
- File search and management

**Requirements:** None - works out of the box

---

### 🌐 Fetch ⭐
**What it does:** Get web content efficiently (AI-optimized HTML)
**Required by:** Web research, documentation lookup

```bash
# Install
claude mcp add fetch -- npx -y @modelcontextprotocol/server-fetch
```

**Configuration:**
```json
{
  "mcpServers": {
    "fetch": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-fetch"]
    }
  }
}
```

**Use Cases:**
- Fetch documentation pages
- Read API specs
- Get web content
- Process HTML for AI

**Requirements:** None

---

### 🗄️ SQLite ⭐
**What it does:** Query SQLite databases directly
**Required by:** Local data analysis, app databases

```bash
# Install (single database)
claude mcp add sqlite -- npx -y @modelcontextprotocol/server-sqlite C:/Users/dogma/Projects/Audible/compliance.db

# Install (multiple databases)
claude mcp add sqlite -- npx -y @modelcontextprotocol/server-sqlite C:/db1.db C:/db2.db C:/db3.db
```

**Configuration:**
```json
{
  "mcpServers": {
    "sqlite": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-sqlite",
        "C:/Users/dogma/Projects/Audible/compliance.db"
      ]
    }
  }
}
```

**Use Cases:**
- Query application databases
- Data analysis
- Schema inspection
- Report generation

**Requirements:** SQLite database file path

---

## 💻 Development Tools

### 🐙 Git ⭐
**What it does:** Git repository operations (read, search, analyze)
**Required by:** Code history analysis, repo inspection

```bash
# Install
claude mcp add git -- npx -y @modelcontextprotocol/server-git --repository C:/Users/dogma/Projects/Audible
```

**Configuration:**
```json
{
  "mcpServers": {
    "git": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-git",
        "--repository",
        "C:/Users/dogma/Projects/Audible"
      ]
    }
  }
}
```

**Use Cases:**
- Git history analysis
- Commit inspection
- Blame tracking
- Repository statistics

**Requirements:** Local Git repository

---

### 🐙 GitHub ⭐
**What it does:** GitHub API integration (repos, PRs, issues)
**Required by:** GitHub automation, issue management

```bash
# Install
claude mcp add github -- npx -y @github/github-mcp-server
```

**Configuration:**
```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["-y", "@github/github-mcp-server"],
      "env": {
        "GITHUB_TOKEN": "ghp_YOUR_TOKEN_HERE"
      }
    }
  }
}
```

**Use Cases:**
- Create/manage PRs
- Issue tracking
- Repository management
- Code review automation

**Requirements:** GitHub Personal Access Token
**Get Token:** https://github.com/settings/tokens

---

### 🐳 Docker
**What it does:** Container and Docker Compose management
**Required by:** Container operations, deployment

```bash
# Install
claude mcp add docker -- npx -y @quantgeekdev/docker-mcp
```

**Configuration:**
```json
{
  "mcpServers": {
    "docker": {
      "command": "npx",
      "args": ["-y", "@quantgeekdev/docker-mcp"]
    }
  }
}
```

**Use Cases:**
- Start/stop containers
- View logs
- Manage compose stacks
- Container inspection

**Requirements:** Docker Desktop running

---

### 📊 GitLab ⭐
**What it does:** GitLab platform integration
**Required by:** GitLab CI/CD, project management

```bash
# Install
claude mcp add gitlab -- npx -y @modelcontextprotocol/server-gitlab
```

**Configuration:**
```json
{
  "mcpServers": {
    "gitlab": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-gitlab"],
      "env": {
        "GITLAB_TOKEN": "YOUR_GITLAB_TOKEN",
        "GITLAB_URL": "https://gitlab.com"
      }
    }
  }
}
```

**Requirements:** GitLab API token

---

## 🗄️ Databases

### 🐘 PostgreSQL ⭐
**What it does:** PostgreSQL database queries and schema inspection
**Required by:** PostgreSQL data analysis

```bash
# Install
claude mcp add postgres -- npx -y @modelcontextprotocol/server-postgres postgresql://user:password@localhost:5432/dbname
```

**Configuration:**
```json
{
  "mcpServers": {
    "postgres": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-postgres",
        "postgresql://user:password@localhost:5432/mydb"
      ]
    }
  }
}
```

**Use Cases:**
- Query production databases
- Schema inspection
- Data analysis
- Read-only by default (safe!)

**Requirements:** PostgreSQL connection string

---

### 🦆 DuckDB
**What it does:** DuckDB analytical queries
**Required by:** Fast analytics, data science

```bash
# Install
claude mcp add duckdb -- npx -y @ktanaka101/mcp-server-duckdb C:/path/to/database.duckdb
```

**Configuration:**
```json
{
  "mcpServers": {
    "duckdb": {
      "command": "npx",
      "args": ["-y", "@ktanaka101/mcp-server-duckdb", "C:/data/analytics.duckdb"]
    }
  }
}
```

**Requirements:** DuckDB database file

---

### 📊 MongoDB
**What it does:** MongoDB collection queries and analysis
**Required by:** NoSQL data access

```bash
# Install
claude mcp add mongodb -- npx -y @kiliczsh/mcp-mongo-server
```

**Configuration:**
```json
{
  "mcpServers": {
    "mongodb": {
      "command": "npx",
      "args": ["-y", "@kiliczsh/mcp-mongo-server"],
      "env": {
        "MONGODB_URI": "mongodb://localhost:27017/mydb"
      }
    }
  }
}
```

**Requirements:** MongoDB connection URI

---

## 🔍 Web & Search

### 🎭 Puppeteer ⭐
**What it does:** Browser automation for web scraping
**Required by:** Web scraping, testing

```bash
# Install
claude mcp add puppeteer -- npx -y @modelcontextprotocol/server-puppeteer
```

**Configuration:**
```json
{
  "mcpServers": {
    "puppeteer": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-puppeteer"]
    }
  }
}
```

**Use Cases:**
- Web scraping
- Screenshot capture
- Form automation
- Testing

**Requirements:** Chrome/Chromium installed

---

### 🦁 Brave Search ⭐
**What it does:** Web search via Brave API
**Required by:** Real-time web search

```bash
# Install
claude mcp add brave-search -- npx -y @modelcontextprotocol/server-brave-search
```

**Configuration:**
```json
{
  "mcpServers": {
    "brave-search": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-brave-search"],
      "env": {
        "BRAVE_API_KEY": "YOUR_API_KEY_HERE"
      }
    }
  }
}
```

**Use Cases:**
- Current events
- Technical documentation
- Research
- Fact-checking

**Requirements:** Brave Search API Key (paid)
**Get Key:** https://brave.com/search/api/

---

### 🎭 Playwright
**What it does:** Modern browser automation (better than Puppeteer)
**Required by:** Advanced web testing

```bash
# Install
claude mcp add playwright -- npx -y @executeautomation/mcp-playwright
```

**Configuration:**
```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": ["-y", "@executeautomation/mcp-playwright"]
    }
  }
}
```

**Requirements:** None (auto-installs browsers)

---

### 🔍 Everything Search (Windows)
**What it does:** Lightning-fast file search on Windows
**Required by:** Fast file location (Windows only)

```bash
# Install
claude mcp add everything-search -- npx -y @mamertofabian/mcp-everything-search
```

**Configuration:**
```json
{
  "mcpServers": {
    "everything-search": {
      "command": "npx",
      "args": ["-y", "@mamertofabian/mcp-everything-search"]
    }
  }
}
```

**Requirements:** Everything Search app running
**Download:** https://www.voidtools.com/

---

## ☁️ Cloud & Storage

### 📁 Google Drive ⭐
**What it does:** Google Drive file access and search
**Required by:** Cloud file management

```bash
# Install
claude mcp add gdrive -- npx -y @modelcontextprotocol/server-gdrive
```

**Configuration:**
```json
{
  "mcpServers": {
    "gdrive": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-gdrive"],
      "env": {
        "GOOGLE_APPLICATION_CREDENTIALS": "C:/path/to/credentials.json"
      }
    }
  }
}
```

**Requirements:** Google Cloud credentials JSON
**Setup:** https://developers.google.com/drive/api/quickstart

---

## 🤖 System Automation

### 💻 Windows CLI
**What it does:** Execute Windows commands (PowerShell, CMD, Git Bash)
**Required by:** Windows system automation

```bash
# Install
claude mcp add windows-cli -- npx -y @simonb97/win-cli-mcp-server
```

**Configuration:**
```json
{
  "mcpServers": {
    "windows-cli": {
      "command": "npx",
      "args": ["-y", "@simonb97/win-cli-mcp-server"],
      "env": {
        "ALLOWED_COMMANDS": "dir,cd,git,npm,python",
        "BLOCKED_COMMANDS": "rm,del,format"
      }
    }
  }
}
```

**Requirements:** Windows OS

**⚠️ Security Note:** Configure `ALLOWED_COMMANDS` and `BLOCKED_COMMANDS` carefully!

---

## 💬 Communication

### 💬 Slack
**What it does:** Send messages, search channels
**Required by:** Team communication automation

```bash
# Install
claude mcp add slack -- npx -y @korotovsky/slack-mcp-server
```

**Configuration:**
```json
{
  "mcpServers": {
    "slack": {
      "command": "npx",
      "args": ["-y", "@korotovsky/slack-mcp-server"],
      "env": {
        "SLACK_BOT_TOKEN": "xoxb-YOUR-TOKEN",
        "SLACK_TEAM_ID": "YOUR-TEAM-ID"
      }
    }
  }
}
```

**Requirements:** Slack Bot Token
**Setup:** https://api.slack.com/apps

---

### 🎯 Linear
**What it does:** Linear issue tracking integration
**Required by:** Project management

```bash
# Install
claude mcp add linear -- npx -y @jerhadf/linear-mcp-server
```

**Configuration:**
```json
{
  "mcpServers": {
    "linear": {
      "command": "npx",
      "args": ["-y", "@jerhadf/linear-mcp-server"],
      "env": {
        "LINEAR_API_KEY": "YOUR_LINEAR_API_KEY"
      }
    }
  }
}
```

**Requirements:** Linear API Key

---

## 🎓 Specialized Tools

### 📚 Context7 (Documentation Lookup)
**What it does:** Version-specific documentation retrieval
**Required by:** Preventing hallucinated APIs

```bash
# Install
claude mcp add context7 -- npx -y @upstash/context7-mcp
```

**Configuration:**
```json
{
  "mcpServers": {
    "context7": {
      "command": "npx",
      "args": ["-y", "@upstash/context7-mcp"]
    }
  }
}
```

**Use Cases:**
- Get real API documentation
- Prevent hallucinations
- Version-aware coding

**Usage:** Add `use context7` to your prompts

---

### 🔍 Exa Search (AI-Optimized)
**What it does:** AI-first web search with code context
**Required by:** Finding libraries, SDKs, APIs

```bash
# Install
claude mcp add exa -- npx -y @exa-labs/exa-mcp-server
```

**Configuration:**
```json
{
  "mcpServers": {
    "exa": {
      "command": "npx",
      "args": ["-y", "@exa-labs/exa-mcp-server"],
      "env": {
        "EXA_API_KEY": "YOUR_EXA_API_KEY"
      }
    }
  }
}
```

**Requirements:** Exa API Key
**Get Key:** https://exa.ai/

---

### 📈 Sentry ⭐
**What it does:** Error tracking and monitoring
**Required by:** Debugging production issues

```bash
# Install
claude mcp add sentry -- npx -y @modelcontextprotocol/server-sentry
```

**Configuration:**
```json
{
  "mcpServers": {
    "sentry": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sentry"],
      "env": {
        "SENTRY_AUTH_TOKEN": "YOUR_SENTRY_TOKEN",
        "SENTRY_ORG": "your-org"
      }
    }
  }
}
```

**Requirements:** Sentry account and auth token

---

## 📋 Configuration Templates

### Minimal Setup (Start Here)
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "C:/Users/dogma/Projects"]
    },
    "fetch": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-fetch"]
    }
  }
}
```

### Development Powerhouse
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "C:/Users/dogma/Projects"]
    },
    "fetch": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-fetch"]
    },
    "git": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-git", "--repository", "C:/Users/dogma/Projects/Audible"]
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@github/github-mcp-server"],
      "env": {
        "GITHUB_TOKEN": "ghp_YOUR_TOKEN"
      }
    },
    "sqlite": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sqlite", "C:/Users/dogma/Projects/Audible/compliance.db"]
    }
  }
}
```

### Full Stack (All the Things)
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "C:/Users/dogma/Projects"]
    },
    "fetch": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-fetch"]
    },
    "git": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-git", "--repository", "C:/Users/dogma/Projects/Audible"]
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@github/github-mcp-server"],
      "env": {
        "GITHUB_TOKEN": "ghp_YOUR_TOKEN"
      }
    },
    "sqlite": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sqlite", "C:/Users/dogma/Projects/Audible/compliance.db"]
    },
    "postgres": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-postgres", "postgresql://user:pass@localhost:5432/db"]
    },
    "docker": {
      "command": "npx",
      "args": ["-y", "@quantgeekdev/docker-mcp"]
    },
    "playwright": {
      "command": "npx",
      "args": ["-y", "@executeautomation/mcp-playwright"]
    },
    "context7": {
      "command": "npx",
      "args": ["-y", "@upstash/context7-mcp"]
    }
  }
}
```

---

## 🚀 Installation Workflows

### First Time Setup
```bash
# 1. Install essentials
claude mcp add filesystem -- npx -y @modelcontextprotocol/server-filesystem C:/Users/dogma/Projects
claude mcp add fetch -- npx -y @modelcontextprotocol/server-fetch

# 2. Test
claude mcp list

# 3. Add more as needed
claude mcp add sqlite -- npx -y @modelcontextprotocol/server-sqlite C:/path/to/db.db
```

### For Your Current Project (Audible Compliance)
```bash
# Perfect setup for your Audible project
claude mcp add filesystem -- npx -y @modelcontextprotocol/server-filesystem C:/Users/dogma/Projects/Audible
claude mcp add sqlite -- npx -y @modelcontextprotocol/server-sqlite C:/Users/dogma/Projects/Audible/compliance.db
claude mcp add git -- npx -y @modelcontextprotocol/server-git --repository C:/Users/dogma/Projects/Audible
claude mcp add github -- npx -y @github/github-mcp-server
```

---

## 🔧 Troubleshooting

### Server Won't Start
```bash
# Check status
claude mcp list

# Remove and re-add
claude mcp remove server-name
claude mcp add server-name -- npx -y @package/name
```

### Need API Keys?
| Service | Get Key URL |
|---------|-------------|
| GitHub | https://github.com/settings/tokens |
| Brave Search | https://brave.com/search/api/ |
| Exa | https://exa.ai/ |
| Google Cloud | https://console.cloud.google.com/ |
| Sentry | https://sentry.io/settings/account/api/auth-tokens/ |

### Docker Not Working?
```bash
# Check Docker is running
docker ps

# If not, start Docker Desktop first
```

### Everything Search Not Found? (Windows)
1. Download: https://www.voidtools.com/
2. Install and launch Everything
3. Then add the MCP server

---

## 📊 Quick Reference

### Server Status Indicators
- ⭐ = Official Anthropic implementation
- 🔑 = Requires API key
- 💻 = Requires local software
- 📦 = Requires database file
- 🌐 = Requires internet

### Installation Pattern
```bash
claude mcp add [name] -- npx -y [package] [args...]
```

### Configuration Pattern
```json
{
  "mcpServers": {
    "server-name": {
      "command": "npx",
      "args": ["-y", "package-name", "...args"],
      "env": {
        "KEY": "value"
      }
    }
  }
}
```

---

## 🎯 Use Case Matrix

| I Want To... | Use This Server |
|--------------|-----------------|
| Query my database | SQLite, PostgreSQL, MongoDB |
| Search the web | Brave Search, Exa |
| Automate browsers | Puppeteer, Playwright |
| Manage GitHub | GitHub |
| Access local files | FileSystem |
| Fetch web pages | Fetch |
| Analyze git history | Git |
| Control Docker | Docker |
| Find files fast (Windows) | Everything Search |
| Get documentation | Context7 |
| Track errors | Sentry |
| Access cloud storage | Google Drive |
| Run commands | Windows CLI |

---

## 📚 Additional Resources

- **Official MCP Docs:** https://modelcontextprotocol.io/
- **Awesome MCP Servers:** https://github.com/appcypher/awesome-mcp-servers
- **Claude Code Docs:** https://docs.claude.com/en/docs/claude-code/
- **MCP GitHub:** https://github.com/modelcontextprotocol/

---

## 🎉 You're Ready!

Installing MCP servers should now be as easy as:
1. Copy the command
2. Replace the paths/keys
3. Paste and run
4. Done!

No overthinking. No complexity. Just breathing.

---

**Made with ❤️ for effortless AI integration**
