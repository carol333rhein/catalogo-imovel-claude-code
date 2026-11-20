# O prompt para colar no Claude Code

Abra o Claude Code dentro desta pasta, copie tudo o que está dentro do quadro abaixo, complete o **título** e a **palavra** entre aspas, e cole.

```
Você está dentro da pasta de um molde de vídeo (Remotion) que cria um Reels de catálogo de imóvel folheado, de 14 segundos, vertical. Quero criar o meu.

TÍTULO DO VÍDEO (complete aqui): "ESCREVA AQUI O SEU TÍTULO"
PALAVRA DO COMENTÁRIO (complete aqui): "ESCREVA AQUI A SUA PALAVRA"

Faça nesta ordem:

1. Me pergunte, de uma vez só, os dados do imóvel: nome, bairro, valor, quartos, suítes, vagas, o que fica perto e uma frase curta para sala, cozinha, quartos e varanda. Não invente nenhum dado. O que eu não souber, deixe de fora.

2. Me peça as fotos do imóvel (fachada, sala, cozinha, quarto, banheiro, lavanderia, varanda) e copie para a pasta public/fotos. Se faltar alguma, use a mais parecida e me avise.

3. Preencha o arquivo dados.json com tudo isso: o título, a palavra, o imóvel e as páginas. Escreva em português do Brasil e sem travessão.

4. Se for a primeira vez, rode npm install. Depois rode npm run render.

5. Abra o vídeo out/catalogo-imovel.mp4 e me mostre. Se algum texto ficar cortado ou apertado, corrija o dados.json e renderize de novo.

Só altere o dados.json e a pasta public/fotos. Não mexa no código da pasta src.
```

**Antes de postar:** confira os dados do imóvel e as fotos no vídeo. Se as fotos forem criadas por IA, avise no vídeo que o imóvel é ilustrativo.
