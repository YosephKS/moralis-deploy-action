FROM node

COPY . .

RUN npm i -g moralis-admin-cli

COPY . .

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]