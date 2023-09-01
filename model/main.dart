import 'class.dart';

void main(List<String> args) {
  ChatApp app = ChatApp();
  app.addMessage();
  app.countOfTotalMEssages();
  print(app.messages);
  print(app);
}
