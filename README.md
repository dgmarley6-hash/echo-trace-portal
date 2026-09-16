# Echo Trace — portal de staff

## Teste local

1. Abra PowerShell nesta pasta e rode `node server.js`.
2. Abra `http://127.0.0.1:3000`.
3. Entre com a senha `local-demo`.
4. Crie um caso e copie o comando para o cliente.

## Preparação para hospedagem pública

Use Node 20+ atrás de um proxy HTTPS. Defina `PUBLIC_HOST=1`, `PUBLIC_ORIGIN=https://painel.seudominio.com`, `STAFF_PASSWORD` com uma senha longa e `PORT` conforme o provedor. O painel exige login de staff; o endpoint de relatório aceita tokens de caso ativos e aleatórios uma única vez. Os dados ficam em `data/`, então configure armazenamento persistente no provedor com `DATA_DIR` apontando para o ponto de montagem do volume.

O cliente pede que a pessoa digite `ACEITO` antes de enviar o relatório. Não há acesso remoto, execução automática ou coleta oculta.

## Recursos do painel

- Tutorial público em `/tutorial`, com instruções para staff e participante.
- Status por caso: aguardando coleta, recebido, limpo, em revisão, coleta inválida e encerrado.
- Observação interna e histórico das decisões do staff.
- Filtros por token e status.
- Exclusão individual de relatório, com confirmação. Ao excluir, o token do caso é encerrado e não pode ser reutilizado.
