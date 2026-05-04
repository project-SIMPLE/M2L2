#!/bin/bash

# ─────────────────────────────────────────
#  setup.command
# ─────────────────────────────────────────
#  Installs Homebrew → Node.js → Gama (optionnal) → runs the app

set -e  # Exit immediately if any command fails

PROJECT_DIR="$HOME/Documents/simple.webplatform"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🍺  Step 1: Installing Homebrew"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if command -v brew &>/dev/null; then
    echo "✅ Homebrew is already installed. Skipping."
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH for Apple Silicon Macs
    if [[ -f "/opt/homebrew/bin/brew" ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi

    echo "✅ Homebrew installed successfully."
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🟢  Step 2: Installing Node.js"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if command -v node &>/dev/null; then
    echo "✅ Node.js is already installed ($(node -v)). Skipping."
else
    brew install node
    echo "✅ Node.js installed successfully ($(node -v))."
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🟢  Step 3: Installing adb tools"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if command -v adb &>/dev/null; then
    echo "adb is already installed ($(adb version))."
else
    brew install --cask android-platform-tools
    echo "✅ adb installed successfully ($(adb version))."
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🟢  Step 4(optionnal): Installing GAMA"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
read -r -p "Do you want to install GAMA ? (y/n) : " CONFIRM

if [[ "$CONFIRM" =~ ^[yY]$ ]]; then
    brew install gama-jdk
    echo "✅ GAMA installed sucessfully"
else
    echo "⏭️  Skipped installation of GAMA"
fi



echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  📦  Step 5: Running npm install"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [[ ! -d "$PROJECT_DIR" ]]; then
    echo "❌ ERROR: Project folder not found at:"
    echo "   $PROJECT_DIR"
    echo "   Please make sure the folder exists and try again."
    exit 1
fi

cd "$PROJECT_DIR"
npm install
echo "✅ npm install complete."


echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  📦  Step 6: intializing .env file"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [[ -f ".env" ]]; then
    echo "✅ .env already existing, skipping...
elif [[ -f ".env.example" ]]; then
    cp .env.example .env
    echo "✅ .env initialized from .env.example file"
else
    echo "⚠️  couldn't find .env.example, skipping..."
fi



echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🚀  Step 7: Starting the app (npm start)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cd ~/Documents/simple.webplatform
npm start &

open -a Safari http://localhost:8000