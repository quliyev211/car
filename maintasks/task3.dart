import 'dart:io';

void main() {
  bool mQonaq = false;
  bool mMusteri = false;
  String mIstifadeci = '';
  String mSifre = '';
  String mMehsul = '';
  int mQiymet = 0;
  
  print('Bizim magazaya xosh geldiniz!');
  while(!mQonaq && !mMusteri) {
    print('Daxil olma yolunu secin:');
    print('1- Musteri olaraq daxil ol');
    print('2- Qonaq olaraq daxil ol');
    
    int gSecim = int.parse(stdin.readLineSync()!);
    
    switch(gSecim) {
      case 1:
        print('Istifadeci adini daxil edin:');
        mIstifadeci = stdin.readLineSync()!;
        
        print('Sifreni daxil edin:');
        mSifre = stdin.readLineSync()!;
        
        if(mIstifadeci.isNotEmpty && mSifre.isNotEmpty) {
          mMusteri = true;
          print('Xosh geldin $mIstifadeci!');
        } else {
          print('Istifadeci adi ve ya sifre bos qala bilmez!');
        }
        break;
        
      case 2:
        mQonaq = true;
        print('Qonaq xosh geldin!');
        break;
        
      default:
        print('Sehv secim!');
        break;
    }
  }
  
  if(mMusteri || mQonaq) {
    print('Mehsullardan birini secin:');
    print('1- Mehsul A - 10 AZN');
    print('2- Mehsul B - 20 AZN');
    print('3- Mehsul C - 30 AZN');
    
    int mehsulSecimi = int.parse(stdin.readLineSync()!);
    
    switch(mehsulSecimi) {
      case 1:
        mMehsul = 'Mehsul A';
        mQiymet = 10;
        break;
        
      case 2:
        mMehsul = 'Mehsul B';
        mQiymet = 20;
        break;
        
      case 3:
        mMehsul = 'Mehsul C';
        mQiymet = 30;
        break;
        
      default:
        print('Sehv secim!');
        break;
    }
    
    print('Sen $mMehsul bu qiymete alirsan $mQiymet AZN.');
    
    bool davamEtmek = true;
    while(davamEtmek) {
      print('Davam etmek isteyirsinizmi? (b/x)');
      String davameSecim = stdin.readLineSync()!;
      
      if(davameSecim == 'b') {
        print('Odenis usulunu secin:');
        print('1- Nagd pul ile odenis');
        print('2- Kart ile odenis');
        
        int odenisSecimi = int.parse(stdin.readLineSync()!);
        
        switch(odenisSecimi) {
          case 1:
            print('Catdirilma usulunu secin:');
            print('1- Adrese catdirma (+10 AZN)');
            print('2- Filialdan goturmek');
            
            int catdirilmaSecim = int.parse(stdin.readLineSync()!);
            
            switch(catdirilmaSecim) {
              case 1:
                mQiymet += 10;
                break;
                
              case 2:
                break;
                
              default:
                print('Sehv secim!');
                break;
            }
            
            print('Toplam qiymet $mQiymet AZN.');
            davamEtmek = false;
            break;
            
          case 2:
            print('Odenis usulunu secin:');
            print('1- Birbasa odenis');
            print('2- Taksit');
            
            int cardChoice = int.parse(stdin.readLineSync()!);
            
            switch(cardChoice) {
              case 1:
                print('Kart melumatlarini daxil et:');
                break;

              case 2:
                print('Banki sec:');
                print('1- Birkart');
                print('2- Tamkart');
                print('3- Bolkart');

                int taksitOdenis = int.parse(stdin.readLineSync()!);

                switch(taksitOdenis) {
                  case 1:
                    print('Siz Birkart taksit karti ile odenis edeceksiniz. Zehmet olmazsa nece ayliq taksit ile odenis etmek istediyinizi secin.');
                    print('3- 3 Ayliq taksit');
                    print('6- 6 Ayliq taksit');
                    print('12- 12 Ayliq taksit');
                    print('18- 18 Ayliq taksit');
                    print('24- 24 Ayliq taksit');

                    int birkartTaksit = int.parse(stdin.readLineSync()!);
                  
                    switch(birkartTaksit) {
                      case 3:
                        print('Siz 3 ayliq taksit ile mehsulu faizsiz elde edirsiniz.');
                        break;

                      case 6:
                        print('Siz 6 ayliq taksit ile mehsulu faizsiz elde edirsiniz.');
                        break;
                      
                      case 12:
                        print('Siz 12 ayliq taksit ile mehsulu faizsiz elde edirsiniz.');
                        break;
                      
                      case 18:
                        print('Siz 18 ayliq taksit ile mehsulu faizsiz elde edirsiniz.');
                        break;
                      
                      case 24:
                        print('Siz 24 ayliq taksit ile mehsulu faizsiz elde edirsiniz.');
                        break;
                    }
                    
                    print('Toplam qiymet $mQiymet AZN.');
                    break;

                  case 2:
                    print('Siz Tamkart taksit karti ile odenis edeceksiniz.');
                    print('3- 3 Ayliq taksit');
                    print('6- 6 Ayliq taksit');
                    print('12- 12 Ayliq taksit');

                    int tamkartTaksit = int.parse(stdin.readLineSync()!);

                    switch(tamkartTaksit) {
                      case 3:
                        print('Siz 3 ayliq taksit ile mehsulu faizsiz elde edirsiniz.');
                        break;
                      
                      case 6:
                        print('Siz 6 ayliq taksit ile mehsulu faizsiz elde edirsiniz.');
                        break;
                      
                      case 12:
                        print('Siz 12 ayliq taksit ile mehsulu elave 25% ile elde edirsiniz.');
                        mQiymet = mQiymet * 125 ~/ 100;
                        break;
                    }
                    1;
                    print('Toplam qiymet $mQiymet AZN.');
                    break;

                  case 3:
                    print('Siz Bolkart taksit karti ile odenis edeceksiniz.');
                    print('3- 3 Ayliq taksit');
                    print('6- 6 Ayliq taksit');

                    int bolkartTaksit = int.parse(stdin.readLineSync()!);

                    switch(bolkartTaksit) {
                      case 3:
                        print('Siz 3 ayliq taksit ile mehsulu faizsiz elde edirsiniz.');
                        break;

                      case 6:
                        print('Siz 6 ayliq taksit ile mehsulu her ay ucun 10 AZN odemekle elde edirsiniz.');
                        mQiymet = mQiymet += (6 * 10);
                        break;
                    }

                    print('Toplam qiymet $mQiymet AZN.');
                    davamEtmek = false;
                    break;
                }
            }
        }
      } else {
          print('Siz mehsulu almaqdan imtina etdiniz.');
      }
    }
  }
}