# Instruções para o Claude Code: criar o catálogo de imóvel de quem está usando

Esta pasta é um molde (Remotion) que gera um Reels vertical de 14 segundos: o título em cima, um catálogo de imóvel que vira página por página no meio e, depois de 5 segundos, a chamada para comentar uma palavra embaixo.

Quem está usando quer o catálogo do **próprio imóvel**. Sua tarefa é pegar as informações e as fotos dessa pessoa e gerar o vídeo.

## O que fazer, nesta ordem

1. **Pergunte os dados, de uma vez só.** Nome do imóvel, bairro, valor, quartos, suítes, vagas, o que fica perto e uma frase curta para sala, cozinha, quartos e varanda. Se a pessoa já mandou o título e a palavra de comentário (ela completa no prompt), use os dois.
2. **Peça as fotos.** Fachada, sala, cozinha, quarto, banheiro, lavanderia e varanda. Copie para `public/fotos/` (pode converter para .jpg) e atualize o nome de cada uma em `dados.json`, no campo `fotos`. Se faltar alguma, use a mais parecida e avise. Prefira fotos verticais.
3. **Preencha o `dados.json`.** Título, destaque (o trecho do título que vai em cor), palavra, dados do imóvel e textos das páginas. Escreva em português do Brasil, sem travessão, e com frases curtas para caber no vídeo. O campo `imovel.aviso` só deve ficar se as fotos forem de IA ("Imóvel ilustrativo..."); se forem fotos reais, deixe vazio.
4. **Gere o vídeo.** Na primeira vez rode `npm install`. Depois `npm run render`. Para conferir um quadro antes: `npm run quadro`.
5. **Abra o vídeo** `out/catalogo-imovel.mp4` e mostre para a pessoa. Se algum texto ficar cortado ou apertado, encurte no `dados.json` e renderize de novo.

## Regras

- **Nunca invente dado do imóvel.** Valor, metragem, quartos, bairro: só o que a pessoa informar. O que não souber, deixe de fora.
- Só altere `dados.json` e a pasta `public/fotos/`. Não mexa no código de `src/`.
- Todo texto sem travessão e em português do Brasil.
- Se `npm` não for reconhecido, o Node.js não está instalado: peça para a pessoa rodar o instalador (`INSTALAR.bat` no Windows ou `instalar.sh` no Mac) e abrir o terminal de novo.
- Antes de a pessoa postar, lembre-a de conferir valores e fotos no vídeo.
