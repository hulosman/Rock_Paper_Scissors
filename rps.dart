import 'dart:io';
import 'dart:math';

enum options {rock , paper , scissors}

void main() {
  int scoreP=0;
  int scoreC =0;
  bool gameTrue=true;
  do{
  print("r(rock) , p(paper) , s(scissors) ");
  var chooseP = stdin.readLineSync();
  if (chooseP=="r") {
    chooseP="rock";
  }
  else if(chooseP=="p"){
    chooseP="paper";
  }
  else if(chooseP=="s"){
    chooseP="scissors";
  }
  else{
    print("Not Valid Value ");
  }
  print(chooseP);
  Random r = new Random();
  int x= r.nextInt(3)+0;
  var chooseC = options.values.elementAt(x);
  print(chooseC.name);
  if ((chooseP == "rock" && chooseC.name == "scissors") ||
          (chooseP == "scissors" && chooseC.name == "paper") ||
          (chooseP == "paper" && chooseC.name == "rock")) {
          scoreP++;
          print("Player: $scoreP - Computer: $scoreC");
          }
  else if ((chooseP == "scissors" && chooseC.name == "rock") ||
          (chooseP == "paper" && chooseC.name == "scissors") ||
          (chooseP == "rock" && chooseC.name == "paper")) {
          scoreC++;
          print("Player: $scoreP - Computer: $scoreC");
          }
  else{
    print("Player: $scoreP - Computer: $scoreC");
  }
  if(scoreP==3){
    print("YOU WIN!!!");
    print("Press q for exit!!!");
    var gameContinue= stdin.readLineSync();
    if(gameContinue=="q"){
      gameTrue=false;
    }
    scoreP=0;
    scoreC=0;
  }
  if (scoreC==3) {
    print("YOU LOSE!!!");
    print("Press q for exit!!!");
    var gameContinue= stdin.readLineSync();
    if(gameContinue=="q"){
      gameTrue=false;
    }
    scoreP=0;
    scoreC=0;
  }
  }while(gameTrue);
}


