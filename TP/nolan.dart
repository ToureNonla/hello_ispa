class Etudiant {
  final String nom;
  final String matricule;
  final String? telephone;
  final List<double> notes;

  
  const Etudiant({
    required this.nom,
    required this.matricule,
    this.telephone,
    this.notes = const [],
  });

  
  double get moyenne {
    if (notes.isEmpty) return 0.0;
    double somme = notes.reduce((a, b) => a + b);
    return somme / notes.length;
  }
}


bool estAdmis(Etudiant e, {double seuil = 10}) {
  return e.moyenne >= seuil;
}

void main() {

  List<Etudiant> etudiants = [
    const Etudiant(
      nom: 'Kouassi Jean',
      matricule: 'ISPA202601',
      telephone: '0701020304',
      notes: [12.5, 14.0, 11.0],
    ),
    const Etudiant(
      nom: 'Awa Diallo',
      matricule: 'ISPA202602',
      telephone: null, 
      notes: [8.0, 9.5, 7.5],
    ),
    const Etudiant(
      nom: 'Brou Amenan',
      matricule: 'ISPA202603',
      telephone: '0506070809',
      notes: [], // Sans note
    ),
    const Etudiant(
      nom: 'Koné Ibrahim',
      matricule: 'ISPA202604',
      telephone: '0102030405',
      notes: [16.0, 15.5, 17.0],
    ),
  ];

  
  print(' RÉSULTATS DES ÉTUDIANTS ');
  for (var e in etudiants) {
    String statut = estAdmis(e) ? 'Admis' : 'Ajourné';
    String tel = e.telephone ?? 'Non renseigné';
    print('${e.nom} – ${e.moyenne.toStringAsFixed(2)} – $statut – Tél : $tel');
  }

 
  print('\n ÉTUDIANTS ADMIS (PAR MOYENNE DÉCROISSANTE) ');
  var admisList = etudiants.where((e) => estAdmis(e)).toList();
  
 
  admisList.sort((a, b) => b.moyenne.compareTo(a.moyenne));

  for (var e in admisList) {
    print('${e.nom} : ${e.moyenne.toStringAsFixed(2)} / 20');
  }
}