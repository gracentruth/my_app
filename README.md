# Flutter Study

A new Flutter project.



## Memo

### 순한맛 강좌7
void main() => runApp(MyApp()); //앱의 시작점,의  runApp: 플러터 최상위 위치 함수
// runApp()의 argument로는 반드시 위젯이라는 요소가 들어가야한다.
// MyApp() : 우리가 직접 만들어야하는 위젯 (Custom Widget), 최상위 위젯, 함수가 아닌 위젯이다 !
- MaterialApp위젯도 argument를 가져야한다. (title, theme, home)

### 순한맛 강좌8 

- Flutter은 위젯이 끝나면 반드시 ','로 마무리
- "[]" 은 배열을 의미한다. 
- home 위젯은 앱이 실행되면 가장먼저 보여주는 경로이다. 
- Scaffold의 argument : appbar, body 

### 순한맛 강좌9
- elevation: 앱바의 그림자 
- mainAxisAlignment : Column위젯의 위젯들을 정렬해준다. (상단/하단/중)
- Column 위젯을 가로축 상으로 정중앙에 위치시키려면 Center()로 감싸고, 세로축 상으로 정중앙에 위치시키려면 반드시
Column위젯 내에서 mainAxisAlignment 속성을 사용해야 한다. 

### 순한맛 강좌11 

<img src="https://user-images.githubusercontent.com/63465350/139401645-d7415012-35ec-45b3-af42-75a96777984c.png" width="300">

### 순한맛 강좌14 

- leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때 사용
- actions: 복수의 아이콘 버튼 등을 오른쪽에 배치할 때 사용


### 조금매운맛 강좌2

- 1.  stateful widget 
: 2개의 클래스의 결합으로 이루어짐 

<img src="https://user-images.githubusercontent.com/63465350/140270085-8edf9136-9790-4939-8ca4-37c60f70937e.jpeg" width="800">

