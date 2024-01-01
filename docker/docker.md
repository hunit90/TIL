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
### TIP
> node-module은 copy할때 오래 걸리므로 docker환경일때는 삭제해줘도 된다.

* docker build
  * docker build -f Dockerfile.dev -t [이미지 이름]
* docker run
  * docker run -it -p 3000:3000 [이미지 이름]
* docker volume run
  * docker run -it -p 3000:3000 -v /usr/src/app/node_modules -v $(pwd):/usr/src/app [이미지 이름]
    * -v /usr/src/app/node_module : 호스트 디렉토리에 node_modules가 없으니 컨테이너에 맵핑 x
    * -v $(pwd):/usr/src/app : pwd 경로에 있는 디렉토리 파일을 /usr/src/app 경로에서 참조

### docker-compose.yml
```dockerfile
version -> docker compose 의 버전
servicese -> 이곳에 실행하려는 컨테이너들을 정의
    express -> 컨테이너 이름
        build -> 현 디렉토리에 있는 Dockerfile 사용
            context -> 도커 이미지를 구성하기 위한 파일과 폴더들이 있는 위치
            dockerfile -> 도커 파일 어떤것인지 지정
        ports -> 포트 매핑 로컬포트 : 컨테이너 포트
        volumes -> 로컬 머신에 잇는 파일들 맵핑
```
```dockerfile
version: "3"
services:
    express:
        build:
            context: .
            dockerfile: Dockerfile.dev
        ports:
        - "3000:3000"
        volumes:
        - /usr/src/app/node_modules
        - ./:/usr/src/app
    # testcode 추가
    tests:
        build:
            context: .
            dockerfile: Dockerfile.dev
        volumes:
            - /usr/src/app/node_modules
            - ./:/usr/src/app
        command: ["npm", "run", "test"]
```

### docker test
```bash
docker run -it [docker name] npm run test
```

```bash
docker-compose up # docker compose 실행
```
2. PROD docker file