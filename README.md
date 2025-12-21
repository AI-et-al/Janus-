<p align="center">
  <img src="janus-icon.jpg" width="200" alt="Janus">
</p>

<h1 align="center">Janus</h1>

<p align="center">
  <strong>Multi-Model AI Orchestration System</strong>
</p>

<p align="center">
  <img src="symposium-animated.gif" width="600" alt="The Symposium - AI et al.">
</p>

<p align="center">
  <a href="https://github.com/AI-et-al/Janus-">
    <img src="https://img.shields.io/github/stars/AI-et-al/Janus-?style=social" alt="GitHub Stars">
  </a>
  <a href="https://github.com/AI-et-al/Janus-/blob/main/LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License">
  </a>
  <a href="https://github.com/AI-et-al">
    <img src="https://img.shields.io/badge/org-AI%20et%20al.-purple" alt="AI et al.">
  </a>
</p>

<p align="center">
  <a href="#features">Features</a> •
  <a href="#quick-start">Quick Start</a> •
  <a href="#components">Components</a> •
  <a href="#dashboard">Dashboard</a> •
  <a href="#roadmap">Roadmap</a>
</p>

---

## About

**Janus** (named after the Roman god of transitions and duality) coordinates multiple AI agents working in parallel. It looks both forward—routing to the best model for each task—and backward—learning from past sessions through persistent memory.

Part of **[AI et al.](https://github.com/AI-et-al)** — a cooperative of humans and AI building meaningful tools together.

---

## Features

- **Multi-Model Orchestration**: Route tasks to Claude, GPT-4, Gemini, or local models based on capability and cost
- **Persistent Memory**: Cross-session context that survives restarts and learns from every interaction
- **Observable AI**: Every decision logged, every disagreement surfaced, full audit trail
- **Research Workflows**: Coordinate multiple AI agents for deep research tasks
- **Cost Optimization**: Route to cheaper models when appropriate, premium when needed
- **Agent Monitoring**: Real-time visibility into what your AI agents are doing

---

## Quick Start

```bash
# Clone the repository
git clone https://github.com/AI-et-al/Janus-.git
cd Janus-

# Start the dashboard
cd janus-dashboard && python -m http.server 8080
# Open http://localhost:8080
```

---

## Components

| Component | Purpose | Status |
|-----------|---------|--------|
| **janus-dashboard** | Real-time monitoring UI | Active |
| **claude-mem** | Persistent cross-session memory | Active |
| **claudelytics** | Usage analytics and cost tracking | Active |
| **llm-council** | Multi-model deliberation | Available |
| **agentic-flow** | Workflow orchestration | Available |

---

## Dashboard

Real-time agent monitoring with glassmorphism UI:

- **Agent Status**: Live view of all active Claude instances with glowing indicators
- **Memory Integration**: View and search persistent memory across sessions
- **Interactive Controls**: Refresh, filter, command palette (Cmd+K)

---

## Design Principles

- **The Karpathy Constraint**: Every feature must provide genuine leverage beyond basic web searches
- **Observable Disagreement**: When AI agents disagree, we surface it rather than suppress it
- **Memory as Infrastructure**: Context isn't ephemeral. Every session builds on previous ones

---

## Roadmap

- [x] Real-time agent dashboard
- [x] Persistent memory integration
- [x] SMS notifications
- [ ] Multi-provider model routing
- [ ] Cost optimization engine
- [ ] LLM Council integration

---

## License

MIT — see the [LICENSE](./LICENSE) file for details.

---

<p align="center">
  <strong>AI et al.</strong><br>
  <em>Humans and AI, building together</em>
</p>
