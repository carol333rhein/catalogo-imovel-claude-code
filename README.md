# Catálogo de imóvel feito pelo Claude Code

Um molde para criar um Reels de catálogo de imóvel que vira página por página, com o título em cima e a chamada para comentar embaixo. Você manda o prompt para o Claude Code, responde as perguntas sobre o seu imóvel, passa as fotos, e ele entrega o vídeo pronto.

**Este efeito é feito com o Claude Code.** O chat comum do Claude não gera o vídeo, porque ele precisa ler e escrever arquivos no seu computador.

## Instalar tudo de uma vez

- **Windows:** dê dois cliques em `INSTALAR.bat`.
- **Mac:** abra o Terminal nesta pasta e rode `bash instalar.sh`.

Ele instala o que faltar: o Node.js, as bibliotecas do vídeo, o navegador interno e o Claude Code. Se o Node.js ainda não estiver instalado, o instalador instala e pede para você abrir o arquivo de novo.

## O que ele instala (para você saber)

1. **Claude Code** instalado e funcionando no seu computador (precisa de uma conta do Claude com acesso ao Claude Code).
2. **Node.js**, versão LTS (a recomendada), em https://nodejs.org. Instale, feche e abra o terminal de novo.
3. **Internet** na primeira vez: o molde baixa as bibliotecas e um navegador interno para gerar o vídeo (uns 200 MB, só uma vez).

Você **não** precisa instalar Git, Photoshop, Canva nem editor de vídeo.

## Passo a passo

1. Baixe este molde: botão verde **Code**, depois **Download ZIP**. Descompacte numa pasta sua.
2. Abra o Claude Code **dentro dessa pasta**.
3. Abra o arquivo `PROMPT.md`, copie o prompt, complete o **título** e a **palavra** entre aspas e cole no Claude Code.
4. Responda as perguntas sobre o seu imóvel e mande as fotos.
5. Espere o vídeo ficar pronto. Ele sai em `out/catalogo-imovel.mp4` (1080x1920, 14 segundos).

## Boas práticas

- Use só dados **reais** do imóvel. O Claude Code usa o que você informa e não deve inventar nada.
- Fotos **verticais** (ou quadradas) ficam melhores.
- Se as fotos forem criadas por IA, deixe claro no vídeo que o imóvel é ilustrativo.
- Confira o vídeo inteiro antes de postar, principalmente valores e detalhes do imóvel.

## O que tem na pasta

- `INSTALAR.bat` e `instalar.sh`: instalam tudo o que precisa.
- `PROMPT.md`: o prompt para colar no Claude Code.
- `CLAUDE.md`: as instruções que o Claude Code lê sozinho ao abrir esta pasta.
- `dados.json`: os textos e o nome das fotos (o Claude Code preenche este arquivo).
- `public/fotos/`: as fotos (vêm com 7 imagens de exemplo geradas por IA, de um imóvel fictício).
- `src/`: o código do vídeo. Não precisa mexer.

## Problemas comuns

- **"npm não é reconhecido":** o Node.js não foi instalado ou o terminal não foi reaberto depois de instalar.
- **O primeiro vídeo demora:** é normal, ele baixa o navegador interno. Os próximos são mais rápidos.
- **Texto cortado no vídeo:** peça ao Claude Code para encurtar o texto no `dados.json` e renderizar de novo.

Feito por Carol Rhein. Uso livre para criar os seus vídeos. Não revenda este molde.
