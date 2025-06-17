import 'dart:io';

void notes() {
  List<String> notes = <String>[];

  menu(notes);
}

List<String> addNote(List<String> notes) {
  print("Escreva uma nota");
  String? annotation = "";

  annotation = stdin.readLineSync();

  if (annotation == null || annotation.isEmpty) {
    print("Não é possível adicionar uma nota vazia.");
    addNote(notes);
  }

  notes.add(annotation!);

  return notes;
}

String getCommand() {
  print("Digite um comando:");
  List<String> options = <String>["1", "2", "3"];
  String? entry = "";

  entry = stdin.readLineSync();

  if (entry == null || !options.contains(entry)) {
    print("Comando inválido");
    getCommand();
  }

  return entry!;
}

void listNotes(List<String> notes) {
  for (int i = 0; i < notes.length; i++) {
    print(notes[i]);
  }
}

void menu(List<String> notes) {
  print("");
  title();
  print("");
  String comando = getCommand();
  print("");

  switch (comando) {
    case "1":
      addNote(notes);
      menu(notes);

    case "2":
      listNotes(notes);
      menu(notes);

    case "3":
      print("See you later!!");
  }
}

void title() {
  print(
    " .----------------.  .----------------.   .-----------------. .----------------.  .----------------.  .----------------.  .----------------. ",
  );
  print(
    "| .--------------. || .--------------. | | .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |",
  );
  print(
    "| | ____    ____ | || |  ____  ____  | | | | ____  _____  | || |     ____     | || |  _________   | || |  _________   | || |    _______   | |",
  );
  print(
    "| ||_   \  /   _|| || | |_  _||_  _| | | | ||_   \|_   _| | || |   .'    \`.   | || | |  _   _  |  | || | |_   ___  |  | || |   /  ___  |  | |",
  );
  print(
    "| |  |   \/   |  | || |   \ \  / /   | | | |  |   \ | |   | || |  /  .--.  \  | || | |_/ | | \_|  | || |   | |_  \_|  | || |  |  (__ \_|  | |",
  );
  print(
    "| |  | |\  /| |  | || |    \ \/ /    | | | |  | |\ \| |   | || |  | |    | |  | || |     | |      | || |   |  _|  _   | || |   '.___\`-.   | |",
  );
  print(
    "| | _| |_\/_| |_ | || |    _|  |_    | | | | _| |_\   |_  | || |  \  \`--'  /  | || |    _| |_     | || |  _| |___/ |  | || |  |\`\____) |  | |",
  );
  print(
    "| ||_____||_____|| || |   |______|   | | | ||_____|\____| | || |   \`.____.'   | || |   |_____|    | || | |_________|  | || |  |_______.'  | |",
  );
  print(
    "| |              | || |              | | | |              | || |              | || |              | || |              | || |              | |",
  );
  print(
    "| '--------------' || '--------------' | | '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |",
  );
  print(
    " '----------------'  '----------------'   '----------------'  '----------------'  '----------------'  '----------------'  '----------------' ",
  );
}
