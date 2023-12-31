# php5 와 php7의 차이점

1. mysql_ 관련함수 폐지 
- PDO 또는 mysqli 사용
2. 익명함수
- 클래스 정의 없이 바로 객체생성가능
```php
$class_obj = new class {public $test=3; public $test2=4};
var_dump($class_obj->test); // int(3)
var_dump($class_obj->test2); // int(4)
```
3. 안전한 난수 생성
```php
random_bytes(16); //임의의 16바이트 문자열 반환
random_int(5,10); // 5에서 10까지 무작이 정수 반환
```
4. null 연산자
```php
// 이전 방식
$user = (!empty($_GET['user'])) ? $_GET['user'] : '';

//php 7 이상버전
$user = $_GET['user'] ?? '';
```

# nodejs가 php보다 좋은점

1. 비동기 I/O 처리
 - nodejs는 비동기 이벤트 기반 아키텍처를 사용하여 I/O 작업을 효율적으로 처리합니다.


# RDBMS와 NoSQL의 차이점

| RDBMS | NoSQL |
|-------|-------|
| 명확한 데이터 구조를 보장 | 스키마가 없어 유연하며 데이터 구조를 가진다.|
| 스키마로 인해 데이터가 유연하지 못한다. | 언제든 저장된 데이터를 조정하고 새로운 필드를 추가 가능 |
| 스키마가 변경 될 경우 번거롭고 어렵다 | 명확한 데이터 구조를 보장 X 데이터 구조 결정이 어렵다 |
| 각 테이터를 중복없이 한번만 저장 | 데이터 중복이 발생할 수 있으며, 중복된 데이터가 변경 될 경우 수정을 모든 컬렉션에서 수정해야 한다. |
| 부하 발생시, 처리가 어렵지만 데이터의 UPDATE가 빠르다. | 많은양의 데이터를 처리, 저장할 수 있지만 데이터를 UPDATE하는데 비교적 느리다. |
| 데이터 구조가 명확하며 변경 될 여지가 없으며 명확한 스키마가 중요한 경우 사용 | 정확한 데이터 구조를 알 수 없고 데이터가 변경/확장이 될 수 있는 경우에 사용 |
| 중복된 데이터가 없어 변경이 용이하기 때문에 관계를 맺고 있는 데이터가 자주 변경이 이루어 지는 시스템에 적합 | 중복된 데이터가 변경될 시에는 모든 컬렉션에서 수정을 해야함. 이러한 특징들을 기반으로 Update가 많이 이루어지지 않는 시스템이 좋으며, scale-out이 가능하다는 장점을 활용해 막대한 데이터를 저장해야해서 Database를 Scale-out를 해야 되는 시스템에 적합.|


# VPC(Virtual Private Cloud) 란 무엇인가?

AWS에서 논리적으로 생성하는 독립적인 네트워크이다.  
사용자는 VPC내에서 IP대역, 인터페이스, 서브넷, 라우팅 테이블 , 인터넷 게이트웨이, 보안그룹, ACL등을 생성하고 제어할 수 있다.  
AWS는 VPC 안에서 다른 가용영역(AZ)에 같은 서브넷 대역을 사용할 수 없다. 예를 들어, 서브넷 A에서 10.0.0.0/24 대역을 사용했다면 서브넷 B에서 10.0.0.0/24 대역을 사용할 수 없다.  
즉, **서브넷은 하나의 가용영역(AZ) 안에 종속되어야 한다.**  

## 퍼블릭 서브넷 & 프라이빗 서브넷
VPC안에 구성할 수 있는 서브넷 구성으로는 퍼블릿 서브넷과 프라이빗 서브넷이 있다.

퍼블릭 서브넷은 외부와의 자유로운 통신이 가능한, 외부 인터넷 구간과 직접적으로 통신을 할 수 있는 공공 네트워크 이다.

프라이빗 서브넷은 이름에서 유추할 수 있듯, 외부에서 직접 접근할 수 없고 NAT Gateway를 이용하면 외부로 단방향 통신(내부 -> 외부 방향)만 가능하다.