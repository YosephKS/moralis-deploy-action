<p align="center">
  <img src="https://moralis.io/wp-content/uploads/2021/04/Moralis-Logo.svg" height="100px"/> 
  <img src="https://avatars0.githubusercontent.com/u/44036562?s=100&v=4"/> 
</p>

# Moralis Deploy GitHub Action
This repository contains custom GitHub actions to deploy JS projects to Moralis server with moralis-admin-cli

### Table of Contents
- [🏗️ Usage](#%EF%B8%8F-usage)
- [🏭 Arguments](#%EF%B8%8F-arguments)
- [🛠️ Contributing](#%EF%B8%8F-contributing)
- [📄 License](#-license)

### 🏗️ Usage

```yml
name: Moralis Deploy
on: [push]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Deploy
        uses: YosephKS
        env:
          MORALIS_API_KEY: ${{ secrets.MORALIS_API_KEY }}
          MORALIS_API_SECRET: ${{ secrets.MORALIS_API_SECRET }}
          MORALIS_API_SUBDOMAIN: ${{ secrets.MORALIS_API_SUBDOMAIN }}
          FOLDER_PATH: ${{ secrets.FOLDER_PATH }}
```

### 🏭 Arguments

The arguments are in the form of environment variables that needs to be stored in the repository's secrets. To get the value of the required environment variables, sign up for a free acccount [here](https://admin.moralis.io/register) and create a new server.

- `MORALIS_API_KEY` **(required)**: Get `CLI API Key` value
- `MORALIS_API_SECRET` **(required)**: Get `CLI API Secret` value
- `MORALIS_API_SUBDOMAIN` **(required)**: Get subdomain from the `Server URL`, e.g.If *https://yjf6ilbm7qh5.usemoralis.com:2053/server* is your Server URL, then the subdomain value will be `yjf6ilbm7qh5.usemoralis.com`
- `FOLDER_PATH`: The path to where your build folder (containing `index.html`) is located

### 🛠️ Contributing

See [CONTRIBUTING.md](https://github.com/YosephKS/moralis-deploy-action/blob/main/CONTRIBUTING.md)

### 📄 License
[GNU Affero General Public License](https://github.com/YosephKS/moralis-deploy-action/blob/main/LICENSE)
