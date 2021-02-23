# Dockerfile

Clone the Dockerfile you want in your proyect or pipeline


# Dockerfiles

- Node
  - [https://github.com/hmanzur/Dockerfile/tree/node/express](Express.js) `node/express`
  - [https://github.com/hmanzur/Dockerfile/tree/node/webapp](Web App (Angular, Vue, React, etc)) `node/webapp`
- Python
  -  [https://github.com/hmanzur/Dockerfile/tree/python/django](Django) `python/django`

## Uses


### On Github Actions

```yml
- name: Clone Dockerfile repo
  uses: uses: actions/checkout@v2
  with:
    repository: 'hmanzur/Dockerfile'
    ref: 'node/express'

- name: Let's build
  run: docker build -t express-image .
```
