@echo off
echo ==================================================
echo   Instalando tudo para o catalogo de imovel
echo ==================================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo [1/4] Node.js nao encontrado. Instalando o Node.js LTS...
  winget install -e --id OpenJS.NodeJS.LTS --accept-source-agreements --accept-package-agreements
  if errorlevel 1 (
    echo Nao consegui instalar automaticamente. Baixe o Node.js LTS em https://nodejs.org, instale, e rode este arquivo de novo.
    pause
    exit /b 1
  )
  echo.
  echo Node.js instalado. FECHE esta janela e abra o INSTALAR.bat de novo para continuar.
  pause
  exit /b
) else (
  echo [1/4] Node.js ja esta instalado.
)

echo.
echo [2/4] Instalando as bibliotecas do video...
call npm install
if errorlevel 1 (
  echo Deu erro no npm install. Confira sua internet e rode de novo.
  pause
  exit /b 1
)

echo.
echo [3/4] Baixando o navegador interno que gera o video...
call npx remotion browser ensure

echo.
where claude >nul 2>nul
if errorlevel 1 (
  echo [4/4] Claude Code nao encontrado. Instalando...
  powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://claude.ai/install.ps1 | iex"
  echo.
  echo Depois que terminar, feche e abra o terminal, entre nesta pasta e digite: claude
) else (
  echo [4/4] Claude Code ja esta instalado.
)

echo.
echo ==================================================
echo   Tudo pronto.
echo   Abra o Claude Code nesta pasta (digite: claude)
echo   e cole o prompt do arquivo PROMPT.md.
echo ==================================================
pause
