FROM node

COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

COPY . .

ENTRYPOINT ["/entrypoint.sh"]