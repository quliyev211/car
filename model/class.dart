class Message {
  String sender = '';
  String recipient = '';
  String timestamp = '';
}
class ChatApp<T extends Message> {
  List<String> messages = [];
  addMessage() {
    messages.add('hello');
    }
  countOfTotalMEssages(){
    print(messages.length);
    }
  }
class TextMessage extends Message {
  String Text = '';
  TextMessage({
    required this.Text,
  });
}
class ImgaeMessage extends Message {
  String imageUrl = '';
  ImgaeMessage({
    required this.imageUrl,
  });
}
class AudioMessage extends Message {
  String audioUrl = '';
  String duration = '';
  AudioMessage({
    required this.audioUrl,
    required this.duration,

  });
}
