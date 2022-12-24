// ignore_for_file: avoid_print
import 'dart:io';
import 'package:hello_flutter/game.dart';
import 'num.dart';

void main(){
  print("╔═══════════Guess number═══════════════");
  bool playAgain = false;

  stdout.write("Enter max number to random :");
  var max = stdin.readLineSync();
  var m = int.tryParse(max!);
  var g1 = Game(m!, "kit", 20);

  while(true) {

    if(playAgain==true) {
      stdout.write("Enter max number to random : ");
      var max = stdin.readLineSync();
      print("═══════════════════════════════════════");
      var m = int.tryParse(max!);
      g1.setAnswer(m);
      playAgain = false;
    }

    stdout.write("Guess number 1 and 100 : ");
    var input = stdin.readLineSync();
    //lprint("Your input is $input");
    if (input == null) {
      //print("Error,input is NULL");
      continue;
    }
    var guess = int.tryParse(input);
    if (guess == null) {
      //print("INPUT ERROR,number only");
      continue;
    } /*else if (guess > m || guess < 1) {
      print("N/A number");
      continue;
    }*/

    GuessResult result = g1.doGuess(g1.answer, guess);
    if (result == GuessResult.correct) {
      print("═══════════════════════════════════════");
      print("❤ ${g1.answer} is Correct " + " ,total guess : ${g1.totalGuess}");
      print("═══════════════THE END═════════════════");
      g1.addGuessToList();
      g1.resetTotalGuess();
      //Play again
      while(true) {
        stdout.write("Play again? (Y/N) : ");
        var play = stdin.readLineSync();
        if (play == "n"||play == "N") {
          playAgain = false;
          break;
        }
        else if (play == "y"||play == "Y") {
          playAgain = true;
          break;
        }
        else{
          continue;
        }
      }
      if(playAgain==true){
         continue;
      }
      else{
          break;
      }

    }
    else if(result == GuessResult.tooHigh){
      print("➜ $guess is Too High! ▲");
      print("═══════════════════════════════════════");
    }
    else if(result == GuessResult.tooLow){
      print("➜ $guess is Too Low! ▼");
      print("═══════════════════════════════════════");
    }

  }
  print("You've played : ${Game.guessList.length}");
  //print("Number of guesses for each game: ${Game.guessList}");
  for (int i = 0; i < Game.guessList.length; i++) {
    print("Game #${i + 1}: ${Game.guessList[i]} guess");
  }
}
