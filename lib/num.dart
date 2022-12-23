import 'dart:io';
import 'dart:math';
// ignore_for_file: avoid_print
void main(){
    final r = Random();
    var answer = r.nextInt(100) + 1;
    //print("Guess number 1 and 100 : ");
    int C = 0;
    print("╔═══════════Guess number═══════════════");
    doGuess(answer,C);


}
void doGuess(int answer,int count){
  while(true) {

    stdout.write("Guess number 1 and 100 : ");
    var input = stdin.readLineSync();
    //print("Your input is $input");
    if (input == null) {
      //print("Error,input is NULL");
      continue;
    }
    var guess = int.tryParse(input);

    if (guess == null) {
      //print("INPUT ERROR,number only");
      continue;
    } else if (guess > 100 || guess < 1) {
      print("N/A number");
      continue;
    }

    if (answer == guess) {
      count++;
      print("═══════════════════════════════════════");
      print("❤ $answer is Correct " + " ,total guess : $count");
      print("═══════════════════════════════════════");
      print("⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣬⡛⣿⣿⣿⣯⢻");
      print("⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢻⣿⣿⢟⣻⣿⣿⣿⣿⣿⣿⣮⡻⣿⣿⣧");
      print("⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣆⠻⡫⣢⠿⣿⣿⣿⣿⣿⣿⣿⣷⣜⢻⣿");
      print("⣿⣿⡏⣿⣿⣨⣝⠿⣿⣿⣿⣿⣿⢕⠸⣛⣩⣥⣄⣩⢝⣛⡿⠿⣿⣿⣆⢝");
      print("⣿⣿⢡⣸⣿⣏⣿⣿⣶⣯⣙⠫⢺⣿⣷⡈⣿⣿⣿⣿⡿⠿⢿⣟⣒⣋⣙⠊");
      print("⣿⡏⡿⣛⣍⢿⣮⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿");
      print("⣿⢱⣾⣿⣿⣿⣝⡮⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⣋⣻⣿⣿⣿⣿");
      print("⢿⢸⣿⣿⣿⣿⣿⣿⣷⣽⣿⣿⣿⣿⣿⣿⣿⡕⣡⣴⣶⣿⣿⣿⡟⣿⣿⣿");
      print("⣦⡸⣿⣿⣿⣿⣿⣿⡛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿");
      print("⢛⠷⡹⣿⠋⣉⣠⣤⣶⣶⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⣿⣿⣿⣷⢹⣿⣿");
      print("⣷⡝⣿⡞⣿⣿⣿⣿⣿⣿⣿⣿⡟⠋⠁⣠⣤⣤⣦⣽⣿⣿⣿⡿⠋⠘⣿⣿");
      print("⣿⣿⡹⣿⡼⣿⣿⣿⣿⣿⣿⣿⣧⡰⣿⣿⣿⣿⣿⣹⡿⠟⠉⡀⠄⠄⢿⣿");
      print("⣿⣿⣿⣽⣿⣼⣛⠿⠿⣿⣿⣿⣿⣿⣯⣿⠿⢟⣻⡽⢚⣤⡞⠄⠄⠄⢸⣿");
      break;
    } else if (guess > answer) {
      count++;
      print("➜ $guess is Too High! ▲");
      print("═══════════════════════════════════════");
    } else if (guess < answer) {
      count++;
      print("➜ $guess is Too Low! ▼");
      print("═══════════════════════════════════════");
    }
  }
}