import 'dart:math';

class Fractions {
  var qusMap = new Map();
  int range = 28;
  var answerMap = Map();
  int index = -1;

  Fractions() {
    for (int i = 0; i < range; i++) {
      int x = i + 1;
      String s = x.toString();
      qusMap[i] = "1/" + s;
    }
    answerMap[0] = "100";
    answerMap[1] = "50";
    answerMap[2] = "33.33";
    answerMap[3] = "25";
    answerMap[4] = "20";
    answerMap[5] = "16.66";
    answerMap[6] = "14.28";
    answerMap[7] = "12.5";
    answerMap[8] = "11.11";
    answerMap[9] = "10";
    answerMap[10] = "9.09";
    answerMap[11] = "8.33";
    answerMap[12] = "7.7";
    answerMap[13] = "7.14";
    answerMap[14] = "6.66";
    answerMap[15] = "6.25";
    answerMap[16] = "5.88";
    answerMap[17] = "5.55";
    answerMap[18] = "5.26";
    answerMap[19] = "5";
    answerMap[20] = "4.76";
    answerMap[21] = "4.55";
    answerMap[22] = "4.35";
    answerMap[23] = "4.16";
    answerMap[24] = "4";
    answerMap[25] = "3.85";
    answerMap[26] = "3.7";
    answerMap[27] = "3.57";
    answerMap[28] = "3.45";
  }


  // for fraction to decimal
  String getQus() {
    Random random = Random();
    index = random.nextInt(range);
    return qusMap[index];
  }

  String checkAnswer(int i) {
    return answerMap[i];
  }

  // for decinmal to fraction
  String getQusRev(){
    Random random = Random();
    index = random.nextInt(range);
    return answerMap[index];
  }
  String checkAnsRev(int i){
    return qusMap[i];
  }
}
