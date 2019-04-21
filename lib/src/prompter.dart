import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  askMultipleChoice(String prompt, List<Option> options) {
    final input = _ask(prompt, options);

    try {
      return options[int.parse(input)].value;
    } catch (err) {
      return askMultipleChoice(prompt, options);
    }
  }

  bool askBinary(String prompt) {
    final input = _ask('$prompt (y/n)', []);
    return input.contains('y');
  }

  String _ask(String prompt, List<Option> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    return _terminal.collectInput();
  }
}
