import 'package:objectbox/objectbox.dart';

@Entity()
class EventData {
  EventData({
    required this.id,
    this.title = '',
    this.description = '',
  });

  @Id()
  int id;
  String title;
  String description;
}
