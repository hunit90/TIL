# Nest 로직흐름

**app.module.ts -> board.controller.ts -> board.service.ts**

# NestJS Module
## Module이란

> 모듈은 @Module {} 데코레이터로 주석이 달린 클래스로, 어플리케이션 구조를 구성하는데 사용하는 메타데이터를 제공한다.  
> 각 응용 프로그램에는 하나 이상의 모듈이 존재하며, 루트 모듈은 Nest가 사용하는 시작점이 된다.

모듈은 관련된 기능 집합으로 구성 요서를 구성하는 효과적인 방법이다. 즉, 기능별로 만들어 진다.  
ex) 유저모듈, 주문모듈...  
같은 기능에 해당하는 것들은 하나의 모듈 폴더 안에 넣어서 사용한다.  
또한, 하나의 공통된 모듈을 생성해 여러 모듈에 공유하며 사용할 수도 있다.

**Module 생성하기**
```shell
nest g module 'module name'
```
대부분의 nest 파일들은 명령어로 생성한다.

# Nest Controller
## Controller란
> 컨트롤러는 들어오는 요청을 처리하고 클라이언트 응답을 반환한다.

컨트롤러는 @Controller 데코레이터로 클래스를 데코레이션하여 정의한다.

## Handler 란?
> 핸들러는 `@Get`, `@Post`, `@Delete`와 같은 데코레이터로 장식된 컨트롤러 클래스 내의 단순한 메소드이다.

**Controller 생성하기**
```shell
nest g controller 'controller name' --no-spec
# --no-spec: 테스트파일 생성을 방지한다.
```
> 컨트롤러가 만들어지는 Logic:  
> 해당 폴더에 Controller 생성 -> 폴더 내 Module 탐색 -> Module 파일 내에 Controller 명시

# NestJS Service(Provider)
## Provider / Service란
Provider는 Nest의 기본개념이다. Controller가 필요로 하는 컴포넌트들이 기능 단위로 존재하고,  
Controller가 해당 컴포넌트를 필요로 할 때 그 컴포넌트를 Controller로 종속시켜주는 것을 주입이라고 하는데, 여기서 각 요소가 Provider가 된다. 우리는 Service를 Controller에 주입시키기 때문에, Service는 큰 의미로 Provider이다.  
Service는 sw개발 내 공통개념이다, 즉 Nest에서만 사용되는 개념이 아니다. 데이터의 유효성을 검사하거나 DB 아이템을 생성하는 등의 작업을 처리한다. @Injectable 데코레이터로 감싸져서 모듈에 제공되며, 이 서비스 인스턴스는 어플리케이션 전체에 사용될 수 있다.

## Service 생성하기
```shell
nest g service 'service name'
```

또한 이렇게 만들어진 Service를 Controller에 사용할 수 있게 Dependency Injection, 즉 종속성 주입을 해주어야 한다. 이는 Controller 클래스의 `Constructor` 안에서 이루어 진다.

접근 제한자(public, protected, private)를 생성자(constructor) 파라미터 안에 선언하면 접근 제한자가 사용된 생성자 파라미터는 암묵적으로 클래스 프로퍼티로 선언된다.
