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

* docker build
  * docker build -f Dockerfile.dev -t [이미지 이름]
* docker run
  * docker run -it -p 3000:3000 [이미지 이름]
* docker volume run
  * docker run -it -p 3000:3000 -v /usr/src/app/node_modules -v $(pwd):/usr/src/app [이미지 이름]
    * -v /usr/src/app/node_module : 호스트 디렉토리에 node_modules가 없으니 컨테이너에 맵핑 x
    * -v $(pwd):/usr/src/app : pwd 경로에 있는 디렉토리 파일을 /usr/src/app 경로에서 참조
2. PROD docker file