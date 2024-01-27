import '../user/user.dart';

class Table {
  String name = '';
  List<User> participants = [];

  Table({String name = ''}) {
    name = name;
  }

  addParticipant(User user) {
    participants.add(user);
  }
}
