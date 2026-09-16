# Atualização do painel — relatório inválido

Esta atualização corrige links de relatório que podiam ser recusados como inválidos.

O painel passa a criar um identificador próprio para cada relatório recebido. O nome do arquivo deixa de depender do token do caso; o token continua apenas dentro do registro do caso.

## Aplicar no Railway

1. Abra o repositório GitHub conectado ao serviço Railway.
2. Substitua o arquivo `portal/server.js` pelo arquivo `portal/server.js` deste pacote.
3. Faça o commit pelo GitHub. O Railway iniciará um novo deployment automaticamente.
4. Espere o deployment ficar verde e abra o domínio do painel.
5. Crie **um novo caso** e faça um novo envio de teste. Casos já enviados continuam fechados por segurança.

Não altere as variáveis já configuradas:

```text
PUBLIC_HOST=1
STAFF_PASSWORD=sua-senha
DATA_DIR=/data
PUBLIC_ORIGIN=https://${{RAILWAY_PUBLIC_DOMAIN}}
```

Mantenha a porta de domínio que já funciona no Railway (no seu caso, `8080`). O Railway fornece essa porta automaticamente ao aplicativo.

## Resultado esperado

Depois do envio confirmado pelo aplicativo, o painel exibe o relatório na fila. Clique no token mostrado ali, em vez de reutilizar manualmente um endereço antigo. O link novo terá o formato:

```text
/report/r-<identificador-aleatório>.json
```

Isso não expõe o token do caso no endereço.
