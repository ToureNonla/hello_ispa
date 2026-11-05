void main() {
  final notes = [12.0, 8.5, 15.0, 9.5, 14.0];

  int superieuresDix = notes.where((n) => n >= 10).length;
  print('Notes >= 10 : $superieuresDix');

  double somme = notes.reduce((a, b) => a + b);
  double moyenne = somme / notes.length;
  print('Moyenne : ${moyenne.toStringAsFixed(2)}');

  var notesFormattees = notes.map((n) => '$n/20').toList();
  print('Notes formatées : $notesFormattees');
}