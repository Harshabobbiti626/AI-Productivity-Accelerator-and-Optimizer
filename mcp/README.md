# MCP SERVERS CATALOG & CONFIGURATION GUIDE

This directory contains the master Model Context Protocol (MCP) server configuration for Antigravity, Claude Code, Cursor, and Windsurf.

---

## 🚀 ZERO-AUTH ESSENTIAL SERVERS (RUN OUT OF THE BOX)

The following servers require **zero API keys** and execute directly via Node.js/`npx` on Windows:

| Server | Purpose | Execution Command |
| :--- | :--- | :--- |
| **`memory`** | Persistent Knowledge Graph. Remembers architecture decisions, entity relations, and tech stack across sessions! | `npx -y @modelcontextprotocol/server-memory` |
| **`fetch`** | Scrapes and converts web pages, official docs, and API specs into clean markdown. | `npx -y @modelcontextprotocol/server-fetch` |
| **`filesystem`** | Provides sandboxed directory exploration and file manipulation. | `npx -y @modelcontextprotocol/server-filesystem %USERPROFILE%` |
| **`sqlite`** | Instant local database inspection and SQL execution. | `npx -y @modelcontextprotocol/server-sqlite` |
| **`puppeteer`** | Headless browser for live visual verification, automated UI testing, and screenshots. | `npx -y @modelcontextprotocol/server-puppeteer` |

---

## 🔑 AUTH-ENABLED ENTERPRISE SERVERS

### 1. PostgreSQL MCP Server
Inspect schemas, tables, and execute queries directly:
```json
"postgres": {
  "command": "cmd",
  "args": [
    "/c",
    "npx",
    "-y",
    "@modelcontextprotocol/server-postgres",
    "postgresql://username:password@localhost:5432/my_database"
  ]
}
```

### 2. GitHub MCP Server
Manage pull requests, issues, commits, and file trees:
```json
"github": {
  "command": "cmd",
  "args": ["/c", "npx", "-y", "@modelcontextprotocol/server-github"],
  "env": {
    "GITHUB_PERSONAL_ACCESS_TOKEN": "ghp_your_personal_access_token_here"
  }
}
```

---

## 🛠️ HOW TO ACTIVATE GLOBALLY
To enable these servers across all projects on your machine:
```powershell
Copy-Item "C:\Users\bobharsh\Downloads\IDE config\mcp\mcp_config.json" "C:\Users\bobharsh\.gemini\config\mcp_config.json" -Force
```
Restart your AI IDE to initialize the new tools.
