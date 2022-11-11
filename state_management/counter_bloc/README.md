# counter_bloc

## REFERENCES
- [(Blog) 플러터(Flutter) BLoC 기본 : Counter using Cubit](https://sianux1209.github.io/flutter/flutter_bloc_counter/)

- [bloclibrary](https://bloclibrary.dev/#/fluttercountertutorial)

- [(Github) Tutorial](https://github.com/felangel/bloc/blob/master/docs/fluttercountertutorial.md)

- [(Github) Source:flutter_counter](https://github.com/felangel/bloc/tree/master/examples/flutter_counter/lib)

- [(Github) Source:examples](https://github.com/felangel/bloc/tree/master/examples)

- [(Official) BlocLibrary](https://bloclibrary.dev/#/)

## SETUP

### create project, pub add
```
playground/state_management> flutter create --platform=web counter_bloc
playground/state_management> cd counter_bloc

playground/state_management/counter_bloc> flutter pub add bloc flutter_bloc

```

### File Structure

파일명	기능
lib/counter_observer.dart	CounterObserver로 감시자 구현
lib/main.dart	CounterObserver()를 감시할 위젯인 RunApp에 연결
lib/app.dart	CounterPage() Home으로 페이지 라우트
lib/counter/view/counter_page.dart	BlocProvider()로 CounterView()에 CounterCubit() State 연결
lib/counter/cubit/counter_cubit.dart	상태 변화 정의 increment(), decrement
lib/counter/view/counter_view.dart	상태 변화 전달 context.read<CounterCubit>().increment(), context.read<CounterCubit>().decrement()
lib/counter/counter.dart	counter 캡슐화