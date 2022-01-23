FROM node

COPY . .

RUN npm i -g moralis-admin-cli
# If you are building your code for production
# RUN npm ci --only=production

COPY . .

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]