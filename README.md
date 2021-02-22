# Dockerfile

Clone the Dockerfile you want in your proyect or pipeline


# Dockerfiles

- Node
  - Express.js
  - WebSite (Angular, Vue, React, etc)
- Python
  -  Django

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
