# Corrigir o build que falhou

O Railway está exibindo **Railpack failed to prepare the build**, o que significa que ele não encontrou o Dockerfile no local que o serviço está usando como origem.

O pacote atualizado traz as duas estruturas aceitas abaixo. Use apenas uma delas, conforme a configuração do seu serviço.

## Opção recomendada — serviço aponta para a raiz do repositório

No GitHub, a raiz do repositório deve ficar assim:

```text
Dockerfile
railway.json
portal/
  package.json
  server.js
```

No Railway, abra o serviço → **Settings** → **Build** e deixe **Root Directory** vazio. Depois faça um novo commit/upload com os arquivos acima. O arquivo `railway.json` obriga o uso do Dockerfile correto.

## Alternativa — serviço aponta para `portal`

Se o campo **Root Directory** do Railway estiver como `portal`, envie o conteúdo da pasta `portal` e confirme que ela contém:

```text
portal/
  Dockerfile
  package.json
  server.js
```

Nessa alternativa, não use o Dockerfile da raiz: o Railway deve enxergar o `portal/Dockerfile` como `Dockerfile` da pasta-raiz configurada.

## Conferência antes do deploy

O arquivo enviado ao GitHub precisa estar descompactado. Não envie apenas o `.zip` para o repositório — o Railway não extrai arquivos ZIP durante o build.

Quando o build estiver certo, o log mostrará algo como **Using detected Dockerfile**, em vez de **Railpack failed to prepare the build**.
