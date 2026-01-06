READ ./vendor/agent-scripts/AGENTS.MD BEFORE ANYTHING (skip if missing).

# Repository Guidelines

## Project Structure & Build Commands
Multi-component workspace—run commands from the component directory.
- `Janus-1/`: `npm run dev` | `build` | `test` (Vitest) | `lint` | `format`
- `claude-os/`: `pytest` | `pytest -m unit/integration/api/rag` | `pytest tests/test_file.py::Test::method`
- `claude-owl/`: `npm run dev:electron` | `test` | `test:unit` | `test:integration` | `typecheck`

## Code Style & Conventions
**TypeScript/JS**: Interfaces for shapes, types for unions. camelCase functions/vars, PascalCase classes/types, kebab-case files. Use semi-colons, single quotes, 100-char width. Minimal `any`—prefer `Record<string, unknown>`. Async/await for I/O.
**Python**: stdlib → third-party → local imports. snake_case functions/vars, PascalCase classes, UPPER_CASE constants. Extensive type hints from `typing`. Try/except with specific exceptions + logging. Triple-quoted docstrings with Args/Returns/Raises.
**Testing**: `*.test.tsx` / `test_*.py`. Tests in `tests/` folders. Run single tests: `pytest tests/file.py::Class::method` or `vitest path/to/test.test.ts -t pattern`.

## Architecture Patterns
- Import order: stdlib, third-party, local (Python); type-only imports first (TS)
- Error handling: try/catch with logging, descriptive messages, specific exceptions
- Code organization: class-based services (main), React hooks (renderer), shared types
- Private methods: `_prefix` (Python), private (TS classes)

## Commit Guidelines
Conventional commits: `feat:` / `fix:` / `refactor:` / `style:`. Short imperative subjects. API keys in local `.env` only—never commit. Reference `TWILIO_SETUP_GUIDE.md` for notification work.


<!-- CLAVIX:START -->
# Clavix - Prompt Improvement Assistant

Clavix is installed in this project. Use the following slash commands:

- `/clavix:improve [prompt]` - Optimize prompts with smart depth auto-selection
- `/clavix:prd` - Generate a PRD through guided questions
- `/clavix:start` - Start conversational mode for iterative refinement
- `/clavix:summarize` - Extract optimized prompt from conversation

**When to use:**
- **Standard depth**: Quick cleanup for simple, clear prompts
- **Comprehensive depth**: Thorough analysis for complex requirements
- **PRD mode**: Strategic planning with architecture and business impact

Clavix automatically selects the appropriate depth based on your prompt quality.

For more information, run `clavix --help` in your terminal.
<!-- CLAVIX:END -->
