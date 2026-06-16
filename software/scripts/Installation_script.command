#!/bin/bash

# ─────────────────────────────────────────
#  setup.command
# ─────────────────────────────────────────
#  Installs Homebrew → Node.js → Gama (optionnal) → runs the app

set -e  # Exit immediately if any command fails

PROJECT_DIR="$HOME/Documents/simple.webplatform"

echo "Welcome in the SIMPLE's webplatform installation tools."
echo "This script will all the necessary for you to be able to run games developed with the SIMPLE toolkit."
echo ""
read -r -p  "Where do you want to install the webplatform? (default: \"$PROJECT_DIR\"): "  input
PROJECT_DIR="${input:-$PROJECT_DIR}"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🍺  Step 1: Installing Homebrew"
echo "This is used to install all the tools to run the project"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if command -v brew &>/dev/null; then
    echo "✅ Homebrew is already installed. Skipping."
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH for Apple Silicon Macs
    if [[ -f "/opt/homebrew/bin/brew" ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi

    # Veryfy install
    if command -v brew &>/dev/null; then
        echo "✅ Homebrew installed successfully."
    else
        echo "⛔ Something strange happened while trying to run the install, please retry..."
        exit 1
    fi
fi

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🍺  Step 1.2: Updating Homebrew"
echo "This ensure to get the latest version of all the applications to install"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

brew update

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🟢  Step 2: Installing Node.js"
echo "This is used to run the webplatform"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if command -v node &>/dev/null; then
    echo "✅ Node.js is already installed ($(node -v)). Skipping."
else
    brew install node

    # Veryfy install
    if command -v node &>/dev/null; then
        echo "✅ Node.js installed successfully ($(node -v))."
    else
        echo "⛔ Something strange happened while trying to run the install, please retry..."
        exit 1
    fi
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🟢  Step 3: Installing Android Debug Bridge (ADB) tools"
echo "This is used to stream/control the VR headsets"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if command -v adb &>/dev/null; then
    echo "✅ ADB is already installed ($(adb version))."
else
    brew install --cask android-platform-tools

    # Veryfy install
    if command -v adb &>/dev/null; then
        echo "✅ ADB installed successfully ($(adb version))."
    else
        echo "⛔ Something strange happened while trying to run the install, please retry..."
        exit 1
    fi
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🟢  Step 4 (optionnal): Installing GAMA"
echo "This is used to run VU's scientific model (used in the SIMPLE project)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
read -r -n 1 -p "Do you want to install GAMA ? (y/N): " CONFIRM
echo ""

if [[ "$CONFIRM" =~ ^[yY]$ ]]; then
    if [[ ! -d "/Applications/Gama.app" ]]; then
        brew install gama-jdk

        # Veryfy install
        if [[ -d "/Applications/Gama.app" ]]; then
            echo "✅ GAMA installed sucessfully"

            echo "Installing SIMPLE plugin ━━━━━━━━━━━━━━━"

            # Install SIMPLE plugin
            cd /Applications/Gama.app/Contents/Eclipse/dropins/
            packageVersion=$(curl -q https://raw.githubusercontent.com/project-SIMPLE/simple.toolchain/refs/heads/p2-deploy/updates/2.x/2.0.x/compositeArtifacts.xml | tail -n 3 | head -n 1 | cut -d "'" -f 2 | cut -d '/' -f 5)
            curl -L -O https://github.com/project-SIMPLE/simple.toolchain/raw/refs/heads/p2-deploy/releases/$packageVersion/plugins/gaml.extension.unity_$packageVersion.jar
            curl -L -O https://github.com/project-SIMPLE/simple.toolchain/raw/refs/heads/p2-deploy/releases/$packageVersion/features/gaml.feature.unity_$packageVersion.jar
        else
            echo "⛔ Something strange happened while trying to run the install, please retry..."
            exit 1
        fi
    else
        echo "✅ GAMA is already installed. Skipping"
    fi
else
    echo "⏭️  Skipped installation of GAMA"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  📦  Step 5: Running npm install"
echo "This will install the webplatform as well as its dependencies"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [[ ! -d "$PROJECT_DIR" ]]; then
    echo "⚠️ Project folder not found at: $PROJECT_DIR"
    echo "Cloning it now..."
    git clone https://github.com/project-SIMPLE/simple.webplatform.git "$PROJECT_DIR"

    echo ""
    echo "=== WARNING ==="
    echo "No virtual univese have been installed, please follow the documentation to do so: https://doc.project-simple.eu/webplatform/virtual-universes/install"
    echo "=== WARNING ==="
fi

cd "$PROJECT_DIR" && npm install && cd -
echo "✅ npm install complete."


echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  📦  Step 6: intializing .env file"
echo "This is the file in which to configure the webplatform"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

cd "$PROJECT_DIR"

if [[ -f ".env" ]]; then
    echo "✅ .env already existing, skipping..."
elif [[ -f ".env.example" ]]; then
    cp .env.example .env
    echo "✅ .env initialized from .env.example file"
else
    echo "⚠️  couldn't find .env.example, skipping..."
fi

if [[ ! "$CONFIRM" =~ ^[yY]$ ]]; then
    echo "Setting the platform to not use GAMA"
    echo "ENV_GAMALESS=true" >> .env
fi

cd -

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🚀  All set !"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
read -r -n 1 -p "Do you want to start the webplatform now? (y/N): " CONFIRM_RUN
echo ""

if [[ "$CONFIRM_RUN" =~ ^[yY]$ ]]; then
    cd "$PROJECT_DIR" && npm start &
    sleep 3 && open -a Safari http://localhost:8000
fi
