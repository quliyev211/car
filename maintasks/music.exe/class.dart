//layable abstract classını yaradın
//classın aşağıdakı metodları var: 
//1- play():  Musiqini  başladır
//2- pause(): Musiqini saxlayır
//3- stop():  Musiqini dayandırır

//b) Playable classı impliment edən MediaFile sinifi yaradın
//classın aşağıdakı atributları var: 
//1- title:    Media faylının başlığı
//2- duration: Media faylının saniyələrlə müddəti
//3- filePath: Media faylının fayl yolu və ya URL-i
//
//c)  Playlistdəki musiqiləri qarışdırmağa imkan verən Shuffleable mixin yaradın
//mixinin aşağıdakı metodu var: 
//1- shufflePlaylist(parametr){}
//d) MediaFile sinfindən miras alan və Shuffleable mixin`dən istifadə edən Playlist  sinifini yaradın
//classın aşağıdakı atributları var:
//1- name:         Pleylistin adı
//2- mediaFiles: Pleylistdəki musiqi fayllarının siyahısı
//classın aşağıdakı metodu var:
//playPlaylist(){}
//Son nəticə olaraq console`da bu şəkildə nəticə görünməlidir


abstract class Playable {
  void play();
  void pause();
  void stop();
}
class MediaFile implements Playable {
  String title;
  int duration;
  String filePath;

  MediaFile(this.title, this.duration, this.filePath);

  @override
  void play() {
    print('Playing     ');
  }

  @override
  void pause() {
    print('Pausing');
  }

  @override
  void stop() {
    print('Stopping');
  }
}

mixin Shuffleable {
  void shufflePlaylist(List<MediaFile> playlist) {
    playlist.shuffle();
  }
}

class Playlist extends MediaFile with Shuffleable {
  String name;
  List<MediaFile> mediaFiles;

  Playlist(this.name, this.mediaFiles) : super('', 0, '');

  void playPlaylist() {
    print('Playing playlist: $name');
    for (var mediaFile in mediaFiles) {
      mediaFile.play();
    }
  }
}