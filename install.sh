#!/bin/bash

# FreeLang → Z-Lang Transpiler Installation Script
# Version: 2.0.0
# Date: 2026-03-02

set -e

echo "========================================="
echo "FreeLang → Z-Lang Transpiler v2.0.0"
echo "========================================="
echo ""

# Check Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is required but not installed."
    echo "Please install Node.js 16+ from https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js $(node --version) found"

# Check npm
if ! command -v npm &> /dev/null; then
    echo "❌ npm is required but not installed."
    exit 1
fi

echo "✅ npm $(npm --version) found"
echo ""

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Build TypeScript
echo "🔨 Building TypeScript..."
npm run build

# Make binary executable
chmod +x dist/index.js

echo ""
echo "========================================="
echo "✅ Installation complete!"
echo "========================================="
echo ""
echo "Usage:"
echo "  npx ts-node src/index.ts <file.fl> [options]"
echo "  npm run dev <file.fl> [options]"
echo ""
echo "Examples:"
echo "  npm run dev examples/hello.fl"
echo "  npm run dev examples/ --batch --report"
echo ""
echo "Or install globally:"
echo "  npm install -g ."
echo "  fl2z <file.fl> [options]"
echo ""
echo "For help:"
echo "  npm run dev -- --help"
echo ""
