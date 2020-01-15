class EventProvider {
  Stream<int> intStream() {
    
    Duration interval = Duration(seconds: 1);
    return Stream<int>.periodic(interval, (int _count) => _count++);
  }
}