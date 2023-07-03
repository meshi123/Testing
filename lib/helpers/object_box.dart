import 'package:clock_it/objectbox.g.dart';
import '../models/event_data.dart';

class EventNotFoundException implements Exception {}

class ObjectBox {
  late final Store _store;
  late final Box<EventData> _eventBox;

  ObjectBox._init(this._store) {
    _eventBox = Box<EventData>(_store);
  }

  static Future<ObjectBox> init() async {
    final store = await openStore();

    return ObjectBox._init(store);
  }

  EventData? getEvent(int id) => _eventBox.get(id);

  Stream<List<EventData>> getEvents() => _eventBox
      .query()
      .watch(triggerImmediately: true)
      .map((query) => query.find());

  int insertEvent(EventData eventData) => _eventBox.put(eventData);
  bool deleteEvent(int id) => _eventBox.remove(id);
}
