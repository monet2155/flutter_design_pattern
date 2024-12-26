import 'package:rxdart/rxdart.dart';

class CounterBloc {
  // BehaviorSubject: RxDart의 Subject 중 하나로, 현재 값(state)을 항상 보유
  final _counterSubject = BehaviorSubject<int>.seeded(0);

  // Counter 값이 담긴 Stream
  Stream<int> get counterStream => _counterSubject.stream;

  // 현재 Counter 값
  int get currentCounter => _counterSubject.value;

  // Counter 값을 증가시키는 메서드
  void increment() {
    _counterSubject.add(currentCounter + 1);
  }

  // Counter 값을 감소시키는 메서드
  void decrement() {
    _counterSubject.add(currentCounter - 1);
  }

  // 리소스 해제를 위해 Stream 닫기
  void dispose() {
    _counterSubject.close();
  }
}
