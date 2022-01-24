FROM node

COPY . .

RUN npm i -g moralis-admin-cli

COPY . .

[ -f package.json ] && npm i

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]