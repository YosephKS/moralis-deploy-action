<p align="center">
  <img src="https://moralis.io/wp-content/uploads/2021/04/Moralis-Logo.svg" height="100px"/> 
  <img src="https://avatars0.githubusercontent.com/u/44036562?s=100&v=4"/> 
</p>

<div align="center">
  
<a href="">[![Deployment](https://github.com/YosephKS/moralis-deploy-action/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/YosephKS/moralis-deploy-action/actions/workflows/main.yml)</a>
<a href="">[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md)</a>

</div>

# Moralis Deploy GitHub Action

Custom GitHub Actions to help you build CI/CD workflow to deploy JS/TS projects to Moralis server.

### Table of Contents
- [👨‍💻 Supported Frameworks](#-supported-frameworks)
- [🏗️ Usage](#%EF%B8%8F-usage)
- [🏭 Environment Varialbes](#-environment-variables)
- [🛠️ Contributing](#%EF%B8%8F-contributing)
- [📄 License](#-license)

### 👨‍💻 Supported Frameworks

- Vanilla Javascript
- React

### 🏗️ Usage

Note that this custom GitHub Action is tested to be working only with Vanilla Javascript and React project. For Vanilla, checkout [main.yml](https://github.com/YosephKS/moralis-deploy-action/blob/main/.github/workflows/main.yml) within this repository. For React, checkout an example [here](https://github.com/YosephKS/moralis-deploy-action-react-example/blob/main/.github/workflows/main.yml)

```yml
name: Moralis Deploy
on: [push]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Deploy
        uses: YosephKS/moralis-deploy-action@<version>
        env:
          MORALIS_API_KEY: ${{ secrets.MORALIS_API_KEY }}
          MORALIS_API_SECRET: ${{ secrets.MORALIS_API_SECRET }}
          MORALIS_API_SUBDOMAIN: ${{ secrets.MORALIS_API_SUBDOMAIN }}
          CUSTOM_FOLDER_PATH: ${{ secrets.CUSTOM_FOLDER_PATH }}
```

### 🏭 Environment Variables

The environment variables need to be stored in the repository's secrets. To get the value of the required environment variables, sign up for a free acccount [here](https://admin.moralis.io/register) and create a new server.

- `MORALIS_API_KEY` **(required)**: Get `CLI API Key` value
- `MORALIS_API_SECRET` **(required)**: Get `CLI API Secret` value
- `MORALIS_API_SUBDOMAIN` **(required)**: Get subdomain from the `Server URL`, e.g.If *https://yjf6ilbm7qh5.usemoralis.com:2053/server* is your Server URL, then the subdomain value will be `yjf6ilbm7qh5.usemoralis.com`
- `CUSTOM FOLDER_PATH`: The path to where your build folder (containing `index.html`) is located; If no value is provided then it defaults to the root folder.

### 🛠️ Contributing

See [CONTRIBUTING.md](https://github.com/YosephKS/moralis-deploy-action/blob/main/CONTRIBUTING.md)

### 📄 License
[GNU Affero General Public License](https://github.com/YosephKS/moralis-deploy-action/blob/main/LICENSE)
