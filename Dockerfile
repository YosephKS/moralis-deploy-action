FROM node

COPY . .

RUN npm i -g moralis-admin-cli

RUN npm ci --only=production

COPY . .

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]