Future<String> chargerAnnonce() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Cours déplacé en salle B12';
}

void main() async {
  print('Chargement...');
  
  String annonce = await chargerAnnonce();
  print(annonce);
}