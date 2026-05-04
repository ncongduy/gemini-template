# Gemini CLI Template

This is a pre-configured workspace template for the [Gemini CLI](https://github.com/google/gemini-cli). It provides a secure and productive environment for AI-assisted software engineering with built-in safety hooks and specialized agent skills.

## Features

### 🛡️ Safety & Security
*   **Sensitive File Protection**: Built-in hooks automatically block AI tools (like `read_file`, `grep_search`, etc.) from accessing sensitive files such as `.env`, `.pem` keys, SSH identities, and certificates.
*   **Credential Awareness**: The environment is designed to prevent accidental exposure of secrets during interactive sessions.

### 🧠 Specialized Skills
Activated via `activate_skill <name>`, these provide expert guidance for specific tasks:
*   **`code-review`**: A comprehensive framework for reviewing code for correctness, security, design patterns, and readability.
*   **`write-tests`**: Industry-standard principles for writing robust, maintainable, and effective tests (AAA structure, FIRST traits).

### 📋 Lifecycle Hooks
The template includes a complete set of lifecycle hooks configured in `.gemini/settings.json`:
*   **`BeforeAgent` / `AfterAgent`**: Handles session-level events.
*   **`BeforeTool` / `AfterTool`**: Inspects and protects tool executions.
*   **`Notification`**: Provides feedback during long-running tasks or input requests.

## Project Structure

```text
.
├── .gemini/
│   ├── hooks/            # Shell scripts for safety and logging
│   ├── skills/           # Specialized agent instructions (Markdown)
│   └── settings.json     # Hook and skill configurations
├── .env                  # (Protected) Local environment variables
└── README.md
```

## Getting Started

1.  **Initialize**: Ensure you have `gemini-cli` installed and this directory is your active workspace.
2.  **Configure**: Add your project-specific secrets to `.env`. The built-in hooks will ensure the AI doesn't read them.
3.  **Use Skills**:
    *   `activate_skill code-review` before submitting a PR.
    *   `activate_skill write-tests` when adding new features.

## Customization

*   **Add Patterns**: Update `.gemini/hooks/sensitive-patterns.sh` to block additional file types or paths.
*   **New Skills**: Create new directories in `.gemini/skills/` with a `SKILL.md` file to add custom expertise.
*   **Tune Hooks**: Modify `.gemini/settings.json` to change which tools are intercepted or to add new lifecycle events.
