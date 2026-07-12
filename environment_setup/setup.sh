#!/bin/bash
set -e

echo "=== Tokenisation Lab Setup ==="
echo ""
echo "This script will:"
echo "  1. Create a Python 3.12 virtual environment"
echo "  2. Install all dependencies (torch, transformers, jupyter, etc.)"
echo "  3. Register the Jupyter kernel"
echo ""
read -p "Continue? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
fi

echo ""
echo "Step 1: Syncing Python 3.12 environment..."
uv sync --python 3.12

echo ""
echo "Step 2: Activating virtual environment..."
source .venv/bin/activate

echo ""
echo "Step 3: Installing Jupyter kernel..."
python -m ipykernel install --user --name=tokenisation-lab --display-name "Tokenisation Lab"

echo ""
echo "✓ Setup complete!"
echo ""
echo "Next steps:"
echo "  1. Activate: source .venv/bin/activate"
echo "  2. Open tokenisation_lab.ipynb in VS Code or Jupyter"
echo "  3. Select kernel: 'Tokenisation Lab'"
echo "  4. Run the first cell to verify GPU support (if available)"
echo ""
