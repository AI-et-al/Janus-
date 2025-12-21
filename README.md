<p align="center">
  <img src="janus-icon.jpg" alt="Janus - Two-Faced God" width="200">
</p>

<h1 align="center">Janus~</h1>

<h3 align="center">
  Multi-Model AI Orchestration System
</h3>

<p align="center">
  <em>Coordinate AI agents with persistent memory, real-time monitoring, and intelligent routing</em>
</p>

<p align="center">
  <a href="https://github.com/AI-et-al/Janus~/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License"></a>
  <img src="https://img.shields.io/badge/python-3.10+-green.svg" alt="Python">
  <img src="https://img.shields.io/badge/node-18+-brightgreen.svg" alt="Node.js">
  <img src="https://img.shields.io/badge/status-active-success.svg" alt="Status">
  <img src="https://img.shields.io/badge/AI%20et%20al.-founding%20project-purple.svg" alt="AI et al.">
</p>

<p align="center">
  <a href="#-highlights">Highlights</a> ·
  <a href="#-introduction">Introduction</a> ·
  <a href="#-architecture">Architecture</a> ·
  <a href="#-quick-start">Quick Start</a> ·
  <a href="#-dashboard">Dashboard</a> ·
  <a href="#-documentation">Docs</a>
</p>

---

## 🔥 Highlights

- **Multi-Model Orchestration** — Route tasks to Claude, GPT-4, Gemini, or local models based on capability and cost
- **Persistent Memory** — Cross-session context that survives restarts and learns from every interaction
- **Real-Time Dashboard** — Monitor active agents, track costs, and view research insights live
- **Observable AI** — Every decision logged, every disagreement surfaced, full audit trail

---

## 📖 Introduction

**Janus** (named after the Roman god of transitions and duality) is an AI orchestration system that coordinates multiple AI agents working in parallel. It looks both forward—routing to the best model for each task—and backward—learning from past sessions through persistent memory.

Part of **[AI et al.](https://github.com/AI-et-al)** — a growing cooperative of humans and AI building meaningful tools together.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Agent Orchestration** | Spawn, monitor, and coordinate multiple AI agents working concurrently |
| **Memory Persistence** | Cross-session memory via claude-mem with automatic context injection |
| **Cost Optimization** | Smart model routing based on task complexity and budget constraints |
| **Observability** | Real-time dashboard, SMS notifications, and comprehensive logging |

---

## 🏗 Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                         JANUS CORE                              │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   ┌─────────────┐    ┌─────────────┐    ┌─────────────┐        │
│   │   Claude    │    │   GPT-4     │    │   Gemini    │        │
│   │   Opus/     │    │   /o1/      │    │   Pro/      │        │
│   │   Sonnet    │    │   4o        │    │   Flash     │        │
│   └──────┬──────┘    └──────┬──────┘    └──────┬──────┘        │
│          │                  │                  │                │
│          └──────────────────┼──────────────────┘                │
│                             │                                   │
│                    ┌────────▼────────┐                          │
│                    │  Model Router   │                          │
│                    │  (capability +  │                          │
│                    │   cost aware)   │                          │
│                    └────────┬────────┘                          │
│                             │                                   │
│   ┌─────────────────────────┼─────────────────────────┐        │
│   │                         │                         │        │
│   ▼                         ▼                         ▼        │
│ ┌──────────┐         ┌──────────┐         ┌──────────┐        │
│ │ claude-  │         │ claudel- │         │  llm-    │        │
│ │   mem    │         │  ytics   │         │ council  │        │
│ │ (memory) │         │ (costs)  │         │(deliber) │        │
│ └──────────┘         └──────────┘         └──────────┘        │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
                              │
                              ▼
                    ┌─────────────────┐
                    │    Dashboard    │
                    │  (real-time UI) │
                    └─────────────────┘
```

---

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/AI-et-al/Janus~.git
cd Janus~

# Start the dashboard
cd janus-dashboard && python -m http.server 8080
# Open http://localhost:8080

# Optional: Enable SMS notifications
export TWILIO_ACCOUNT_SID="your_sid"
export TWILIO_AUTH_TOKEN="your_token"
export TWILIO_PHONE_NUMBER="+1234567890"
export NOTIFICATION_PHONE_NUMBER="+0987654321"
```

---

## 📊 Dashboard

<p align="center">
  <em>Real-time agent monitoring with glassmorphism UI</em>
</p>

**Features:**
- **Agent Status** — Live view of all active Claude instances with model badges
- **Animated Indicators** — Glowing effects for agents currently executing tasks
- **Memory Integration** — View and search persistent memory entries
- **Research Feed** — Discoveries, decisions, and insights from active sessions
- **Interactive Controls** — Refresh, filter, and command palette (Cmd+K)

```bash
# Local development
cd janus-dashboard && python -m http.server 8080
```

---

## 📦 Components

| Component | Purpose | Status |
|-----------|---------|--------|
| **[janus-dashboard](./janus-dashboard)** | Real-time monitoring UI with glassmorphism design | ✅ Active |
| **[claude-mem](./claude-mem)** | Persistent cross-session memory system | ✅ Active |
| **[claudelytics](./claudelytics)** | Usage analytics and cost tracking | ✅ Active |
| **[llm-council](./llm-council)** | Multi-model deliberation for complex decisions | ✅ Available |
| **[agentic-flow](./agentic-flow)** | Workflow orchestration engine | ✅ Available |
| **[ascii-animator](./ascii-animator)** | Terminal ASCII art animations | ✅ Active |

---

## 🧠 Design Principles

### The Karpathy Constraint
> "What can I do with an LLM that I cannot do by spending 30 minutes searching Google?"

Every feature must clear this bar. We build tools that provide genuine leverage, not AI wrappers around basic functionality.

### Observable Disagreement
When AI agents disagree with instructions or each other, we surface it rather than suppress it. Disagreement is signal—it reveals edge cases, ambiguity, and opportunities for better design.

### Memory as Infrastructure
Context isn't ephemeral. Every session builds on previous ones. Memory is a first-class citizen, not an afterthought.

---

## 📚 Documentation

| Document | Description |
|----------|-------------|
| [TWILIO_SETUP_GUIDE.md](./TWILIO_SETUP_GUIDE.md) | SMS notification configuration |
| [IMPLEMENTATION_ROADMAP.md](./IMPLEMENTATION_ROADMAP.md) | Development roadmap and milestones |
| [INTEGRATION_STRATEGY.md](./INTEGRATION_STRATEGY.md) | External project integration guide |
| [MEM0_VIABILITY_REPORT.md](./MEM0_VIABILITY_REPORT.md) | Memory system evaluation |

---

## 🗺 Roadmap

- [x] Real-time agent dashboard
- [x] Persistent memory integration (claude-mem)
- [x] SMS notifications (Twilio)
- [ ] Multi-provider model routing
- [ ] Cost optimization engine
- [ ] LLM Council integration for complex decisions
- [ ] Workflow templates and presets

---

## 🤝 Contributing

Janus is an **AI et al.** project—a cooperative of humans and AI building together. Contributions welcome from both species.

```bash
# Fork, clone, create branch
git checkout -b feature/your-feature

# Make changes, test locally
cd janus-dashboard && python -m http.server 8080

# Submit PR
```

---

## 📄 License

MIT License — see [LICENSE](./LICENSE) for details.

---

<p align="center">
  <strong>AI et al.</strong><br>
  <em>Humans and AI, building together</em><br><br>
  <a href="https://github.com/AI-et-al">GitHub</a> ·
  <a href="#-quick-start">Get Started</a>
</p>
