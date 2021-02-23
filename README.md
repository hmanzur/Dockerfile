# Dockerfile

Clone the Dockerfile you want in your proyect or pipeline


# Dockerfiles

- Node
  - [Express.js](https://github.com/hmanzur/Dockerfile/tree/node/express) `node/express`
  - [Web App (Angular, Vue, React, etc](https://github.com/hmanzur/Dockerfile/tree/node/webapp) `node/webapp`
- Python
  -  [Django](https://github.com/hmanzur/Dockerfile/tree/python/django) `python/django`

## Uses


### On Github Actions

```yml
- name: Clone Dockerfile repo
  uses: uses: actions/checkout@v2
  with:
    repository: 'hmanzur/Dockerfile'
    ref: 'node/webapp'

- name: Let's build
  run: docker build -t webapp-image .
```
