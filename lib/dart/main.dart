import 'encapsulation_setters_getters.dart';

void main() {
  People person = People('Ted', 21, true);
  person.printName();
  person.setStatus(22);
  print(person.isYoung);
}