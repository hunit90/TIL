# Javascript 코딩테스트에 사용되는 메소드 정리

## array
- concat() 
  - 문자열, 배열 합치기 
```javascript
  let arr = ['a','b','c']
  let add = ['d', 'f']

  console.log(arr.concat(add)) // ['a','b','c','d','f']
```

- 배열항목을 추가하거나 삭제
  - push(): 배열 끝에 항목을 추가
  - pop(): 배열 끝에 항목제거
  - unshift(): 배열 앞에 항목추가
  - shift(): 배열 앞에 항목 제거
```javascript
let arr = ['사과', '배', '한라봉', '바나나'];

console.log(arr.push('파인애플')); //5
console.log(arr); //['사과', '배', '한라봉', '바나나', '파인애플']

console.log(arr.pop()); //'파인애플'
console.log(arr); //['사과', '배', '한라봉', '바나나']

console.log(arr.unsift('감귤')); //5
console.log(arr); //['감귤', '사과', '배', '한라봉', '바나나']

console.log(arr.shift()); //'감귤'
console.log(arr); //['사과', '배', '한라봉', '바나나']
```