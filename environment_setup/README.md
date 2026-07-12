# Tokenisation Lab — Interactive Tutorial

Learn how LLM tokenizers work by building them from scratch. This notebook covers:

- **Strings → Token IDs** — How tokenizers convert text to numbers
- **Token vocabularies** — Understanding EOS, PAD, and special tokens
- **Chat templates** — Formatting messages for language models
- **One-token-at-a-time generation** — How LLMs actually produce text
- **Temperature & sampling** — Controlling randomness in generation

## Setup (5 minutes)

### Prerequisites

- **uv package manager** — [Install uv](https://docs.astral.sh/uv/getting-started/installation/)
- **Python 3.12** — (uv will download it automatically)
- **GPU (optional)** — Recommended for Section 3 (model generation), but not required for Sections 1–2

### Quick Start

1. **Clone or download** this folder to your machine.

2. **Open a terminal** and `cd` into this directory.

3. **Run the setup commands** (copy/paste all three):
   ```bash
   uv sync --python 3.12
   source .venv/bin/activate
   python -m ipykernel install --user --name=tokenisation-lab --display-name "Tokenisation Lab"
   ```

4. **Open the notebook** in VS Code, Jupyter, or your IDE.

5. **Select the kernel:**
   - Click **"Select Kernel"** (top-right of the notebook)
   - Choose **"Tokenisation Lab"**
   - Restart the kernel if prompted

6. **Test your setup:**
   - Run the first code cell (Quick GPU check)
   - If you see `torch.cuda.is_available() = True`, you have GPU support ✓

---

## What Each Section Covers

### Section 1: Strings → Token IDs
- Tokenization basics: how text becomes numbers
- Token vocabularies and special tokens
- Language efficiency: comparing English vs Indian scripts
- Interactive token tables

### Section 2: Chat Templates
- How base LLMs become chat models
- Chat template mechanics (`<|im_start|>`, `<|im_end|>`)
- System prompts, user messages, assistant turns
- Comparing formats across model families (Qwen, GPT, Llama)
- Thinking/reasoning mode in Qwen3

### Section 3: One-Token-at-a-Time Generation
- Loading a model to GPU
- The generation loop step-by-step
- Logits → probabilities → next token
- Temperature and top_p sampling strategies
- Watching the model choose tokens with confidence scores

---

## Troubleshooting

**"uv: command not found"**
→ Install uv: `curl -LsSf https://astral.sh/uv/install.sh | sh`

**"CUDA GPU is required"**
→ Section 3 requires CUDA. You can still run Sections 1–2 on CPU.

**Kernel not showing up**
→ Restart your IDE after running the kernel install command.

**Package import errors**
→ Make sure you ran `uv sync` and activated the virtualenv: `source .venv/bin/activate`

---

## Files

- `tokenisation_lab.ipynb` — Main notebook (all sections)
- `pyproject.toml` — Dependency declaration for uv
- `README.md` — This file

---

## Feedback & Questions

- Found a bug? Check the notebook outputs first.
- Want to extend the tutorial? Clone the repo and make a PR.

**Happy learning!** 🚀
