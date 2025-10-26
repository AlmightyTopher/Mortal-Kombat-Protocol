# Mortal-Kombat-Protocol

[![Sync MCP Catalog](https://github.com/AlmightyTopher/Mortal-Kombat-Protocol/actions/workflows/sync-mcp-catalog.yml/badge.svg)](https://github.com/AlmightyTopher/Mortal-Kombat-Protocol/actions/workflows/sync-mcp-catalog.yml)

**AI-Powered Project Improvements Without API Keys!** 🚀

This repository contains the unified MCP (Model Context Protocol) catalog with a **focus on FREE, zero-configuration MCP servers** that enhance project improvements through AI assistance.

## 📋 Included Files

- **`Unified_MCP_Catalog.md`** - Comprehensive catalog of MCP servers with installation commands and configurations
- **`sync-mcp-catalog.ps1`** - PowerShell script for manual sync with the source repository
- **`.github/workflows/sync-mcp-catalog.yml`** - Automated GitHub Actions workflow for daily updates

## 🔄 Automatic Synchronization

The MCP catalog automatically synchronizes daily from the source repository to ensure you always have the latest server configurations and installation guides.

### Manual Sync (PowerShell)
```powershell
# Run the sync script
./sync-mcp-catalog.ps1

# Force sync even if no changes detected
./sync-mcp-catalog.ps1 -Force

# Preview what would be synced (dry run)
./sync-mcp-catalog.ps1 -DryRun
```

### Automated Sync (GitHub Actions)
- **Scheduled**: Daily at 9 AM Pacific Time
- **Manual**: Trigger via GitHub Actions tab
- **Source**: Syncs from `AlmightyTopher/playwright-automation` repository

## 🛠️ Setup Instructions

### Prerequisites
- PowerShell 7+ (for local sync script)
- GitHub repository with proper access to source repository

### Initial Setup
1. Clone this repository
2. Configure GitHub Actions secrets if needed (currently uses default GITHUB_TOKEN)
3. Update the repository name in the sync script if you fork this project

### Customization
- Update `playwright-automation` references in scripts to match your source repository
- Modify the sync schedule in `.github/workflows/sync-mcp-catalog.yml`
- Add additional sync sources if needed

## 📖 MCP Catalog Features

The Unified MCP Catalog includes:
- **20+ MCP servers** with installation commands
- **Configuration templates** for different setups
- **Troubleshooting guides** and API key information
- **Use case matrix** for common MCP applications

See [Unified_MCP_Catalog.md](Unified_MCP_Catalog.md) for complete server listings and setup instructions.

## 🤖 What are MCP Servers?

MCP (Model Context Protocol) servers extend AI assistants with capabilities like:
- File system access and management
- Database querying
- Web scraping and automation
- Git repository operations
- External API integrations

## 🔧 Development

### Repository Structure
```
.
├── Unified_MCP_Catalog.md    # The main MCP catalog
├── sync-mcp-catalog.ps1      # Local sync script
├── .github/workflows/        # GitHub Actions automation
│   └── sync-mcp-catalog.yml
├── README.md                 # This file
└── .gitignore               # Generated files
```

### Contributing
1. The MCP catalog synchronizes automatically
2. Manual updates to the catalog should be made in the source repository
3. Automation scripts can be enhanced via pull requests

## 🚀 ZERO-CONFIG MCP SERVERS (PRIORITY)

**Start here - these work immediately with no setup:**

```bash
# Core essentials (install first)
claude mcp add filesystem -- npx -y @modelcontextprotocol/server-filesystem C:/Users/dogma/Projects
claude mcp add fetch -- npx -y @modelcontextprotocol/server-fetch

# Development power-ups
claude mcp add git -- npx -y @modelcontextprotocol/server-git --repository .
claude mcp add sqlite -- npx -y @modelcontextprotocol/server-sqlite C:/path/to/data.db
claude mcp add playwright -- npx -y @executeautomation/mcp-playwright
```

### 🔧 How MCP Improves Projects

MCP servers enable AI assistants to directly:
- **Analyze Code**: Read entire codebases for deep understanding
- **Query Databases**: Examine data structures and content
- **Test Web Apps**: Automate browser testing and scraping
- **Manage Git**: Track changes, analyze history, suggest improvements
- **Research Documentation**: Fetch latest API docs and examples
- **Generate Reports**: Process files and create summaries

### 🎯 Free MCP Server Benefits

| Server | What It Does | Project Impact |
|--------|--------------|----------------|
| **Filesystem** | Read/write files, explore structure | Code analysis, file generation, refactoring |
| **Fetch** | Download web content/HTML | Documentation lookup, research, examples |
| **Git** | Repository operations | History analysis, change tracking, collaboration |
| **SQLite** | Database queries | Data analysis, schema understanding, reporting |
| **Playwright** | Browser automation | Web testing, scraping, UI automation |
| **DuckDB** | Analytics queries | Fast data analysis without setup |

### 💡 Improvement Workflow

1. **Analysis Phase**: Use Filesystem + Git servers to understand current codebase
2. **Research Phase**: Use Fetch to gather latest documentation and best practices
3. **Development Phase**: Generate improved code with file access capabilities
4. **Testing Phase**: Use Playwright for automated testing
5. **Data Phase**: Query local databases for data-driven insights

**No API keys required - just install and start improving projects!**

---

**MCP makes AI integration as natural as breathing.** This repository ensures that capability stays current and accessible.
