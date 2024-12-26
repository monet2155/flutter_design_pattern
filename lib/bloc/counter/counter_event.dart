// 이벤트 정의: 상태 변경의 트리거 역할
abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}
