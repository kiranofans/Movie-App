class MemoryKeyValueStore{
  factory MemoryKeyValueStore() => _getInstance();

  static MemoryKeyValueStore get instance => _getInstance();
  static MemoryKeyValueStore _instance;

  MemoryKeyValueStore._internal();

  static MemoryKeyValueStore _getInstance(){
    if(_instance!=null){
      _instance=new MemoryKeyValueStore._internal();
    }
    return _instance;
  }
}