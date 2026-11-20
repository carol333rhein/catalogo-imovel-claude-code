#!/bin/bash
# Instala tudo o que o molde do catálogo de imóvel precisa (Mac e Linux)
set -e
cd "$(dirname "$0")"

echo "=== Instalando tudo para o catálogo de imóvel ==="

if ! command -v node >/dev/null 2>&1; then
  echo "[1/4] Node.js não encontrado."
  if command -v brew >/dev/null 2>&1; then
    echo "Instalando o Node.js LTS com o Homebrew..."
    brew install node
  else
    echo "Instale o Node.js LTS em https://nodejs.org, feche e abra o terminal e rode este arquivo de novo."
    exit 1
  fi
else
  echo "[1/4] Node.js já está instalado."
fi

echo "[2/4] Instalando as bibliotecas do vídeo..."
npm install

echo "[3/4] Baixando o navegador interno que gera o vídeo..."
npx remotion browser ensure

if ! command -v claude >/dev/null 2>&1; then
  echo "[4/4] Claude Code não encontrado. Instalando..."
  curl -fsSL https://claude.ai/install.sh | bash
  echo "Depois que terminar, feche e abra o terminal, entre nesta pasta e digite: claude"
else
  echo "[4/4] Claude Code já está instalado."
fi

echo ""
echo "Tudo pronto. Abra o Claude Code nesta pasta (digite: claude) e cole o prompt do arquivo PROMPT.md."
