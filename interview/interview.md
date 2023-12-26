#php5 와 php7의 차이점

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
