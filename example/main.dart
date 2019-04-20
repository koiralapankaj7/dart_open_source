import 'package:pk_prompter/src/terminal.dart';

void main(List<String> args) {
  Terminal terminal = Terminal();
  terminal.clearScreen();
  terminal.printPrompt("Hello there");
}
