# Doker

---

1. 개발환경 docker file
   - Dockerfile.dev
   ```dockerfile
   FROM node:alpine
   WORKDIR /usr/src/app
   COPY package.json ./
   RUN npm install
   COPY ./ ./
   CMD ["npm", "run", "start"]
    ```
  docker file 실행 
```bash
docker build -f Dockerfile.dev ./
```
* TIP
> node-module은 copy할때 오래 걸리므로 docker환경일때는 삭제해줘도 된다.
2. PROD docker file