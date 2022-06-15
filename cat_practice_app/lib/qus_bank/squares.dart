import 'dart:math';

class Squares {
  var min = 13;
  var max = 41;
  var perfectSquares=Map();

  int index = -1;
  Squares(){
    for(int i=13;i<41;i++){
      perfectSquares[i]=i*i;
    }

  }

  int getQus() {
    Random random = Random();
    var randomNumber4 = min + random.nextInt(max - min);
    return randomNumber4;
  }
  int getQusRev(){
    Random random = Random();
    var randomNumber4 = min + random.nextInt(max - min);
    return perfectSquares[randomNumber4];
  }



}
